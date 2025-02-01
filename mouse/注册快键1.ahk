; ========== CapsLockX 核心 ==========
; 名称：CapsLockX 核心
; 描述：处理 CapsLock 模式、快捷键映射、功能触发等
; 作者：snomiao
; 支持：https://github.com/snomiao/CapsLockX
; 编码：UTF-8 with BOM
; LICENCE: GNU GPLv3
; ========== CapsLockX 核心 ==========

Process Priority, , High ; 设置脚本为高优先级
SetTitleMatchMode RegEx
#SingleInstance Force ; 防止重复运行
#Persistent
#MaxHotkeysPerInterval 1000 ; 限制单位时间内的热键触发次数
#InstallMouseHook ; 安装鼠标钩子

; 全局变量
global CapsLockX := 1
global CapsLockXMode := 0
global CM_NORMAL := 0 ; 普通模式
global CM_FN := 1 ; Fn 模式
global CM_CapsLockX := 2 ; CapsLockX 模式
global CLX_CustomMode := 0 ; 自定义模式标识符
global CLX_上次触发键 := ""
global CLX_倒数第三触发键 := ""
global LastAltPressTime := 0 ; LAlt 上次按下时间
global DoubleClickThreshold := 250 ; 双击阈值（毫秒）

; 快速两次按下注册键切换模式
LAlt::
    ; 检测双击
    if (A_TickCount - LastAltPressTime < DoubleClickThreshold) {
        CLX_CustomMode := !CLX_CustomMode
        if (CLX_CustomMode) {
            ToolTip 进入自定义模式
        } else {
            ToolTip 退出自定义模式
        }
        SetTimer CLX_HideToolTips, -1000
        LastAltPressTime := 0
        Return
    }
    LastAltPressTime := A_TickCount
Return

; CapsLock 状态处理
UpdateCapsLockXMode() {
    if (T_UseCapsLockLight) {
        CapsLockXMode := GetKeyState("CapsLock", "P")
    }
    if (T_UseScrollLockLight) {
        CapsLockXMode |= GetKeyState("ScrollLock", "T") << 1
    }
    Return CapsLockXMode
}

UpdateCapsLockXLight() {
    NowLightState := ((CapsLockXMode & CM_CapsLockX) || (CapsLockXMode & CM_FN))
    static LastLightState := NowLightState

    ; 更新灯光状态
    static LastCapsLockXMode := CapsLockXMode
    if (!(LastCapsLockXMode & CM_CapsLockX) && (CapsLockXMode & CM_CapsLockX)) {
        ToolTip 进入CLX模式，可单击任意CLX键退出
        SetTimer CLX_HideToolTips, -1000
    }
    if ((LastCapsLockXMode & CM_CapsLockX) && !(CapsLockXMode & CM_CapsLockX)) {
        ToolTip 退出CLX模式，可长按CLX键或按CapsLock+Space键，再次进入
        SetTimer CLX_HideToolTips, -1000
    }
    LastCapsLockXMode := CapsLockXMode

    ; 检测灯光边缘状态
    IsEdge := !(NowLightState == LastLightState)
    if (!IsEdge) {
        Return
    }
    UpEdge := NowLightState && !LastLightState

    if (T_UseScrollLockLight && GetKeyState("ScrollLock", "T") != NowLightState) {
        Send {ScrollLock}
    }
    if (UpEdge) {
        global T_SwitchTrayIconOn
        if (T_SwitchSound && T_SwitchSoundOn) {
            SoundPlay %T_SwitchSoundOn%
        }
    } else {
        global T_SwitchTrayIconOff
        if (T_SwitchSound && T_SwitchSoundOff) {
            SoundPlay %T_SwitchSoundOff%
        }
    }
    LastLightState := NowLightState
}

CapsLockXTurnOff() {
    CapsLockXMode &= ~CM_CapsLockX
    Return UpdateCapsLockXLight()
}

CapsLockXTurnOn() {
    CapsLockXMode |= CM_CapsLockX
    Return UpdateCapsLockXLight()
}

; 判断是否两次按同一个键
is_twise_same_key(触发键, time_sep=250) {
    if (CLX_上次触发键 == 触发键) && (A_TickCount - ClX_LastKeyTickCount < time_sep) {
        return true
    }
    ClX_LastKeyTickCount := A_TickCount
    return false
}


; CLX 按键按下逻辑
CLX_Dn() {
    CLX_倒数第三触发键 := CLX_上次触发键
    CLX_上次触发键 := 触发键 := RegExReplace(A_ThisHotkey, "[\$\*\!\^\+\#\s]")

    if (CapsLockXMode & CM_CapsLockX) {
        ; CLX 模式逻辑
        ToolTip 在 CLX 模式下触发
        SetTimer CLX_HideToolTips, -1000
    } else {
        ; 普通模式逻辑
        if (is_twise_same_key(触发键)) {
            CapsLockXTurnOn()
        } else {
            CapsLockXTurnOff()
        }
    }
    UpdateCapsLockXLight()
}

; CLX 按键弹起逻辑
CLX_Up() {
    CapsLockXMode &= ~CM_FN
    if (CLX_CustomMode) {
        ToolTip 自定义模式下弹起 CLX 键
        SetTimer CLX_HideToolTips, -1000
    }
}

; 在自定义模式下的映射
#If (CLX_CustomMode)
    *LAlt::
        ToolTip 自定义模式下按住 LAlt
    Return

    *LAlt Up::
        ToolTip 松开 LAlt
        SetTimer CLX_HideToolTips, -1000
    Return

    *Space::
        Send {Enter} ; 映射空格为 Enter
    Return

    *CapsLock::
        Send {Tab} ; 映射 CapsLock 为 Tab
    Return
#If

; 隐藏 ToolTip
CLX_HideToolTips() {
    ToolTip
    SetTimer CLX_HideToolTips, Off
}
