; ========== CapsLockX ==========
; 名称：CapsLockX 核心
; 描述：用于处理配置文件、加载其它模块、提供基本 CapsLockX 键触发功能
; 作者：snomiao
; 联系：snomiao@gmail.com
; 支持：https://github.com/snomiao/CapsLockX
; 编码：UTF-8 with BOM
; 版权：Copyright © 2017-2024 Snowstar Laboratory. All Rights Reserved.
; LICENCE: GNU GPLv3
; ========== CapsLockX ==========
; 创建：Snowstar QQ: 997596439
; 参与完善：张工 QQ: 45289331

Process Priority, , High ; 脚本高优先级
SetTitleMatchMode RegEx
; #NoEnv ; 不检查空变量是否为环境变量

#SingleInstance Force ; 跳过对话框并自动替换旧实例（在启动成功后有效）
; if(A_IsAdmin){
;     #SingleInstance Force ; 跳过对话框并自动替换旧实例（在启动成功后有效）
; }else{
;     #SingleInstance, Off ; 允许多开，然后在下面用热键把其它实例关掉
; }
#Persistent
#MaxHotkeysPerInterval 1000 ; 时间内按键最大次数（通常是一直按着键触发的。。）







;#Include D:\PycharmProjects\capslockx\mouse\鼠标操作.ahk
; 载入设定



; 模式处理
global CapsLockX := 1 ; 模块运行标识符
global CapsLockXMode := 1
global ModuleState := 0
global CLX_FnActed := 0
global CM_NORMAL := 0 ; 普通模式（键盘的正常状态）
global CM_FN := 1 ; 组合键 CapsLockX 模式（或称组合键模式
global CM_CapsLockX := 2 ; CapsLockX 模式，通过长按CLX键进入
; global CM_FNX := 3 ; FnX 模式并不存在
global CapsLockPressTimestamp := 0
global CLX_上次触发键 := ""
global CLX_LastKeyTickCount := A_TickCount
global CLX_TimeSinceSameKey := 10000000
global CLX_cumstom_key := "F4"


;按键模式要在这里导入不，不知道哪个变量导致运行不了
global CLX_当前触发模式 := ""

;global CurrentMode := 0 ;用于只在当前状态的变量


; ==============================================================================================

; value func
CapsLockX()
{
    return CapsLockX
}
CapsLockXMode()
{
    return CapsLockXMode
}
; 根据灯的状态来切换到上次程序退出时使用的模式（不）
UpdateCapsLockXMode()
{
    if (T_UseCapsLockLight) {
        CapsLockXMode := GetKeyState("CapsLock", "P")
    }
    if (T_UseScrollLockLight) {
        CapsLockXMode |= GetKeyState("ScrollLock", "T") << 1
    }
    Return CapsLockXMode
}
UpdateCapsLockXMode()

; 根据当前模式，切换灯
;Menu, tray, icon, %T_SwitchTrayIconOff%
;UpdateCapsLockXLight()

global T_IgnoresByLines
defaultIgnoreFilePath := "./Data/CapsLockX.defaults.ignore.txt"
userIgnoreFilePath := CLX_ConfigDir "/CapsLockX.user.ignore.txt"
FileRead, T_IgnoresByLines, %userIgnoreFilePath%
if (!T_IgnoresByLinesUser) {
    FileCopy, %defaultIgnoreFilePath%, %userIgnoreFilePath%
    FileRead, T_IgnoresByLines, %userIgnoreFilePath%
}

global CLX_Paused := 0
;ToolTip % CLX_Avaliable()
;ToolTip % CLX_NotAvaliable()



#if CLX_Avaliable()
; 触发只跟热键有关系
;ToolTip Ava

#if CLX_NotAvaliable()
;ToolTip Not Ava

#If
   ;Hotkey *LAlt, CLX_Dn
Hotkey, If, CLX_Avaliable()
if(true)
    Hotkey LAlt, CLX_Dn
    ;Hotkey *LControl, CLX_Dn
    ;Hotkey *LShift, CLX_Dn

if(T_XKeyAsCapsLock)
    Hotkey, *CapsLock, CLX_Dn
;if(T_XKeyAsCapsLock)
    ;Hotkey, CapsLock & %CLX_cumstom_key%, CLX_Dn
;if(T_XKeyAsSpace)
    ;Hotkey *%CLX_cumstom_key%, CLX_Dn
if(T_XKeyAsInsert)
    Hotkey *Insert, CLX_Dn
if(T_XKeyAsScrollLock)
    Hotkey *ScrollLock, CLX_Dn
if(T_XKeyAsRAlt)
    Hotkey RAlt, CLX_Dn
if(T_XKeyAsCustomKey)
    Hotkey *%CLX_cumstom_key%, CLX_Dn

Hotkey, If, CLX_NotAvaliable()
if(true)
    Hotkey LAlt, CLX_NotAvaliable
   ; Hotkey LControl, CLX_NotAvaliable
    ;Hotkey LShift, CLX_NotAvaliable
if(T_XKeyAsCapsLock)
    Hotkey CapsLock, CLX_NotAvaliable

;if(T_XKeyAsSpace)
    ;Hotkey %CLX_cumstom_key%, CLX_NotAvaliable
if(T_XKeyAsInsert)
    Hotkey Insert, CLX_NotAvaliable
if(T_XKeyAsScrollLock)
    Hotkey ScrollLock, CLX_NotAvaliable
if(T_XKeyAsRAlt)
    Hotkey RAlt, CLX_NotAvaliable
if(T_XKeyAsCustomKey)
    Hotkey %CLX_cumstom_key%, CLX_NotAvaliable

Hotkey, If
if(true)
    Hotkey LAlt Up, CLX_Up
    ;Hotkey *LControl, CLX_Up
    ;Hotkey *LShift, CLX_Up
if(T_XKeyAsCapsLock)
    Hotkey *CapsLock Up, CLX_Up
;if(T_XKeyAsSpace)
    ;Hotkey *%CLX_cumstom_key% Up, CLX_Up
if(T_XKeyAsInsert)
    Hotkey *Insert Up, CLX_Up
if(T_XKeyAsScrollLock)
    Hotkey *ScrollLock Up, CLX_Up
if(T_XKeyAsRAlt)
    Hotkey *RAlt Up, CLX_Up
if(T_XKeyAsCustomKey)
    Hotkey *%CLX_cumstom_key% Up, CLX_Up



#If

#Include, 按键模式.ahk

#Include, 鼠标操作.ahk
;c:: ToolTip %CurrentMode%


UpdateCapsLockXLight()
{
    NowLightState := ((CapsLockXMode & CM_CapsLockX) || (CapsLockXMode & CM_FN))
    static LastLightState := NowLightState

     ; notice
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

    IsEdge := !(NowLightState == LastLightState)
    if (!IsEdge) {
        Return
    }
    UpEdge := NowLightState && !LastLightState

    if (T_UseScrollLockLight && GetKeyState("ScrollLock", "T") != NowLightState) {
        Send {ScrollLock}
    }
    if (T_UseCursor) {
        ; Module
        try {
            Func("UpdateCapsCursor").Call(NowLightState)
        }
    }
    if (UpEdge) {
        global T_SwitchTrayIconOn
        ;aMenu, tray, icon, %T_SwitchTrayIconOn%
        if (T_SwitchSound && T_SwitchSoundOn) {
            SoundPlay %T_SwitchSoundOn%
        }
    } else {
        global T_SwitchTrayIconOff
        ;Menu, tray, icon, %T_SwitchTrayIconOff%
        if (T_SwitchSound && T_SwitchSoundOff) {
            SoundPlay %T_SwitchSoundOff%
        }
    }
    LastLightState := NowLightState
}
CapsLockXTurnOff()
{
    CapsLockXMode &= ~CM_CapsLockX
    re := UpdateCapsLockXLight()
    Return re
}
CapsLockXTurnOn()
{
    CapsLockXMode |= CM_CapsLockX
    re := UpdateCapsLockXLight()
    Return re
}
CLX_NotAvaliable()
{
    return !CLX_Avaliable()
}
CLX_Avaliable()
{
    ;ToolTip func CLX_Avaliable
    return 1
    flag_IgnoreWindow := 0
    loop, Parse, T_IgnoresByLines, `n, `r
    {
        content := Trim(RegExReplace(A_LoopField, "^#.*", ""))
        if (content) {
            ; flag_IgnoreWindow := flag_IgnoreWindow || WinActive(content)
            if (WinActive(content)) {
                ToolTip, ignored by %content%
                return false
            }
        }
    }
    return !CLX_Paused
}
CLX_Loaded()
{
    ; 使用退出键退出其它实例
    SendInput ^!+\

    TrayTip CapsLockX %CLX_VersionName%, % "加载成功"
    Menu, Tray, Tip, CapsLockX %CLX_VersionName%
}
CLX_Reload()
{
    ToolTip, % "CapsLockX 重载中"
    static times := 0
    times += 1
    if (times == 1 && false) {
        ;;感觉limited user 不太管用
        ; 使用 RunAsLimitiedUser 避免重载时出现 Could not close the previous instance of this script.  Keep waiting?
        RunAsLimitiedUser(A_WorkingDir "\CapsLockX.exe", A_WorkingDir)
        ; 这里启动新实例后不用急着退出当前实例
        ; 如果重载的新实例启动成功，则会自动使用热键结束掉本实例
        ; 而如果没有启动成功则保留本实例，以方便修改语法错误的模块
    } else {
        ; 但如果用户多次要求重载，那就直接退出掉好了（即，双击重载会强制退出当前实例）
        RunAsSameUser(A_WorkingDir "\CapsLockX.exe", A_WorkingDir)
        ExitApp
    }
}

CLX_ModeExit()
{
    ; TrayTip CapsLockX, 退出CLX模式
    ; ToolTip 退出CLX模式
    ; SetTimer CLX_HideToolTips, -1000
    CapsLockXMode &= ~CM_CapsLockX
}
CLX_ModeEnter()
{
    ; ToolTip 进入CLX模式
    ; SetTimer CLX_HideToolTips, -1000
    CapsLockXMode |= CM_CapsLockX
}
show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, name := "", value := "") {
    return
    ; 确保全局变量
    global CLX_上次触发键
    global CLX_倒数第三触发键
    global CLX_触发键数组
    global CLX_触发时间数组
    global CLX_触发时间差
    global A_ThisHotkey_数组
    global A_Thiskey_数组
    global A_PriorKey_数组
    global A_PriorHotkey_数组
    global CurrentMode

    ; 初始拼接
    tip_str := "CLX_cumstom_key: " CLX_cumstom_key "`n"
         . "F4Q: " F4Q "`n"
         . "A_ThisHotkey: " A_ThisHotkey "`n"
         . "A_PriorKey: " A_PriorKey "`n"
         . "A_PriorHotkey: " A_PriorHotkey "`n"
         . "CLX_AND_SPACE_Q: " CLX_AND_SPACE_Q "`n"
         . "CLX_上次触发键: " CLX_上次触发键 "`n"


    ; 动态数组处理
    stringArray := ["A_TimeSincePriorHotkey", "A_TimeSinceThisHotkey", "CLX_上次触发键", "触发键", "CurrentMode"]

    ; 遍历非数组变量并拼接
    for _, varName in stringArray {
        try {
            varValue := %varName%  ; 动态获取变量值
            tip_str .= varName ": " varValue "`n"
        } catch {
            tip_str .= varName ": 未定义或不可访问`n"
        }
    }

    ; 处理数组并拼接其内容
    arrayVariables := ["CLX_触发键数组", "CLX_触发时间数组", "CLX_触发时间差", "A_ThisHotkey_数组", "A_Thiskey_数组", "A_PriorKey_数组", "A_PriorHotkey_数组"]

    for _, arrayName in arrayVariables {
        try {
            arrayRef := %arrayName%  ; 获取数组引用
            if IsObject(arrayRef) {  ; 检查是否为对象（数组）
                arrayContent := ""
                for index, value in arrayRef {
                    arrayContent .= "[" index "]: " value ", "
                }
                tip_str .= arrayName ": " Trim(arrayContent, ", ") "`n"
            } else {
                tip_str .= arrayName ": 非数组或未定义`n"
            }
        } catch {
            tip_str .= arrayName ": 未定义或不可访问`n"
        }
    }
    tip_str .= (name ? name ": " value "`n" : "")  ; 如果 name 不为空，才添加这一项

    ; 显示结果
    ToolTip % tip_str
}





CLX_Dn()
{
    /*
    组合键细节：
    模式：
    普通模式 + 按住CLX -> CLX模式
    普通模式 + 长按CLX -> CLX锁定模式
    普通模式 + (CLX+SPACE) -> CLX锁定模式
    CLX模式 + 弹起CLX -> 普通模式
    CLX锁定模式 + 按住CLX -> CLX模式

    CapsLock + Space 同时按下：进入CLX模式
    CLX长按：进入CLX锁定模式
    CLX单击：退出CLX锁定模式

    */
    ; 按住其它键的时候 不触发 CapsLockX 避免影响打字
    ;CLX_上次触发键 := 触发键 := RegExReplace(A_ThisHotkey, "[\$\*\!\^\+\#\s]")



    当前触发键 := RegExReplace(A_ThisHotkey, "[\$\*\!\^\+\#\s]")
        Send {Blind}{%当前触发键% Down}  ; 保持按下状态
    CLX_记录触发键(当前触发键)
  ; 按下 CLX 键时，进入 CLX 锁定模式

    hotKeyDownMode()  ; 触发按键按下时的模式切换
    show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, "按下")
        ;show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, "双击")


    return





    其它键按住 := 触发键 && 触发键 != A_PriorKey && GetKeyState(A_PriorKey, "P")
    WheelQ := InStr("WheelDown|WheelUp", A_PriorKey)
    SpaceQ := 触发键 == "  Space"
    CapsLockQ := 触发键 == "CapsLock"
    F4Q := 触发键 == CLX_cumstom_key
    ModifierQ := InStr("LControl|RControl|LShift|RShift|RAlt|LWin|RWin", A_PriorKey)
     ModifierEnableQ := !F4Q && ModifierQ

    CLX_AND_SPACE_Q := (A_PriorKey == "CapsLock" && 触发键 == CLX_cumstom_key) || (触发键 == "CapsLock" && A_PriorKey == CLX_cumstom_key )
    if (A_ThisHotkey == A_PriorHotkey) || (A_ThisHotkey == A_PriorKey){
        if A_TimeSincePriorHotkey
            if A_TimeSinceThisHotkey
                ToolTip A_TimeSincePriorHotkey, A_TimeSinceThisHotkey
    }
    if (CLX_AND_SPACE_Q && A_TimeSincePriorHotkey < 250) {
           show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, "指定键触发")
        ; CLX_ModeEnter()
        CapsLockXMode |= CM_CapsLockX
        UpdateCapsLockXLight()
        KeyWait %触发键%
        return
    }

    ; tooltip % ModifierQ "a" ModifierEnableQ "a" WheelQ "a"  其它键按住
    BypassCapsLockX := !ModifierEnableQ && !WheelQ && 其它键按住
    if (BypassCapsLockX) {
           show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, "其他键触发")
        CLX_上次触发键 := ""
        ; ToolTip, % first5char "_" 触发键
        Send {Blind}{%触发键% Down}
        KeyWait %触发键%
        Send {Blind}{%触发键% Up}
        Return
    }
    ; 记录 CapsLockX 按住的时间
    if ( CapsLockPressTimestamp == 0) {
        CapsLockPressTimestamp := A_TickCount
    }
    ; 进入 Fn 模式
    ; if (CapsLockXMode & CM_CapsLockX) {
    ;     CLX_ModeExit()
    ;     KeyWait, %waitKey% ; wait to prevent flashing the quit and enter message
    ; }
    ; CLX_ModeExit()

    CapsLockXMode |= CM_FN
    CapsLockXMode &= ~CM_CapsLockX

    ; ToolTip clxmode

    if (A_PriorKey == CLX_上次触发键) {
           show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, "单键触发")
        if (A_PriorKey == CLX_cumstom_key) {
            ; 长按空格时保持原功能
            ; TODO: read system repeat interval
            if ( A_TickCount - CapsLockPressTimestamp > 200) {
                Send, {Blind}{%CLX_cumstom_key%}
            }
        } else {
            if ( A_TickCount - CapsLockPressTimestamp > 1000) {
                ; (20210817)长按（空格除外）
                waitKey := CLX_上次触发键
                ; 取消长按CLX进入CLX锁定模式
                ; CLX_ModeEnter()
                ; 尝试增加长按显示热键提示
                ; Func("CLX_LongPressDown").Call()
                KeyWait, %waitKey% ; wait to prevent flashing the quit and enter message
                ; Func("CLX_LongPressUp").Call()
            }
        }
    }
    else {
                   show_info(CLX_cumstom_key, F4Q, 触发键, CLX_AND_SPACE_Q, "什么都没有触发 ")

    }
    UpdateCapsLockXLight()
}
CLX_Up()
{

    当前触发键 := RegExReplace(A_ThisHotkey, "[\$\*\!\^\+\#\s]|Up")
    ;CLX_记录触发键(当前触发键)
        Send {Blind}{%当前触发键% Up}
    hotKeyUpMode()

    ;show_info(CLX_cumstom_key, F4Q, 当前触发键, CLX_AND_SPACE_Q, "弹起")
    return

    CapsLockPressTimestamp := 0

    ; CLX弹起时退出 Fn 模式
    CapsLockXMode &= ~CM_FN

    ; CLX单击弹起时
    if (A_PriorKey == CLX_上次触发键) {
        if (CapsLockXMode & CM_CapsLockX) {
            ; CLX_ModeExit()
        } else {
            ; 单击 CapsLockX
            if (CLX_上次触发键 == "CapsLock") {
                ; 切换 CapsLock 状态（原功能）
                if (GetKeyState("CapsLock", "T")) {
                    SetCapsLockState, Off
                } else {
                    SetCapsLockState, On
                }
            }
            ; 单击 空格键
            if (CLX_上次触发键 == CLX_cumstom_key) {
                ; 原功能（按空格键）
                Send {Blind}{%CLX_cumstom_key%}
            }
        }
    }
    UpdateCapsLockXLight()
    CLX_上次触发键 := ""

     }
RunAsSameUser(CMD, WorkingDir)
{
    Run, %CMD%, %WorkingDir%
}

RunAsLimitiedUser(CMD, WorkingDir)
{
    ; ref: [Run as normal user (not as admin) when user is admin - Ask for Help - AutoHotkey Community]( https://autohotkey.com/board/topic/79136-run-as-normal-user-not-as-admin-when-user-is-admin/ )
    ;
    ; TEST DEMO
    ; schtasks /Create /tn CLX_RunAsLimitedUser /sc ONCE /tr "cmd /k cd \"C:\\users\\snomi\\\" && notepad \".\\tmp.txt\"" /F /ST 00:00
    ; schtasks /Run /tn CLX_RunAsLimitedUser
    ; schtasks /Delete /tn CLX_RunAsLimitedUser /F
    ;
    ; Safe_WorkingDir := RegExReplace("C:\users\snomi\", "\\", "\\")
    ; Safe_CMD := RegExReplace(RegExReplace("notepad "".\temp.txt""", "\\", "\\"), "\""", "\""")
    Safe_WorkingDir := RegExReplace(WorkingDir, "\\", "\\")
    Safe_CMD := RegExReplace(RegExReplace(CMD, "\\", "\\"), "\""", "\""")
    RunWait cmd /c schtasks /Create /tn CLX_RunAsLimitedUser /F /sc ONCE /ST 00:00 /tr "cmd /c cd \"%Safe_WorkingDir% && %Safe_CMD%\", , Hide
    RunWait cmd /c schtasks /Run /tn CLX_RunAsLimitedUser, , Hide
    RunWait cmd /c schtasks /Delete /tn CLX_RunAsLimitedUser /F, , Hide
}
; 接下来是流程控制
#if

; CapsLockX Mode switching processing
CLX_NotAvaliable:
    ToolTip CLX_Avaliable
    ;TrayTip, CapsLockX, NotAvaliable
Return

CLX_HideToolTips()
{
    ToolTip
    SetTimer CLX_HideToolTips, Off
}

