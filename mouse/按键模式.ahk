
global CLX_触发键数组 := []  ; 存储键值的数组
global CLX_触发时间数组 := []  ; 存储时间戳的数组
global CLX_触发时间差 := []    ; 存储时间差的数组
global A_ThisHotkey_数组 := []
global A_PriorKeyy_数组 := []
global A_PriorHotkey_数组 := []

global CLX_触发键数组 := []  ; 存储键值的数组
global CLX_触发时间数组 := []  ; 存储时间戳的数组
global CLX_触发时间差 := []    ; 存储时间差的数组
global A_ThisHotkey_数组 := []  ; 存储 A_ThisHotkey 的数组
global A_ThisKey_数组 := []
global A_PriorKey_数组 := []    ; 存储 A_PriorKey 的数组
global A_PriorHotkey_数组 := [] ; 存储 A_PriorHotkey 的数组

global KeyHoldMode := 1 ;双击后触发键不松开进入，弹起后退出模式
global DoubleComboMode := 2 ;双击后进入模式，退出需要按q
;global TribleComboMode := 4

global LAltMode := 4 ;双击LAlt进入
global LCtrlMode := 8 ;双击LCtrl进入

global CurrentMode := 0 ;用于只在当前状态的变量


;b:: show_info2("按键模式") ;不是这
;#if  CurrentMode |= LAltMode


CLX_记录触发键(触发键) {

    global CLX_触发键数组, CLX_触发时间数组, CLX_触发时间差
    global A_ThisHotkey_数组, A_PriorKey_数组, A_PriorHotkey_数组

    ; 获取当前时间（以毫秒为单位）
    当前时间 := A_TickCount

    ; 将触发键和时间插入到数组的第一个位置
    CLX_触发键数组.InsertAt(1, 触发键)
    CLX_触发时间数组.InsertAt(1, 当前时间)

    ; 插入内置变量到各自的数组
    A_ThisHotkey_数组.InsertAt(1, A_ThisHotkey)
    this_key := RegExReplace(A_ThisHotkey, "[\$\*\!\^\+\#\s]")
    A_ThisKey_数组.InsertAt(1, this_key)
    A_PriorKey_数组.InsertAt(1, A_PriorKey)
    A_PriorHotkey_数组.InsertAt(1, A_PriorHotkey)

    ; 如果数组长度超过1，计算时间差并插入到时间差数组的第一个位置
    if (CLX_触发时间数组.Length() > 1) {
        上一个时间 := CLX_触发时间数组[2]  ; 因为第一个是最新插入的，所以需要取第二个
        时间差 := 当前时间 - 上一个时间
        CLX_触发时间差.InsertAt(1, 时间差)
    }

    ; 如果数组长度超过10，移除最后一个元素
    if (CLX_触发键数组.Length() > 10) {
        CLX_触发键数组.RemoveAt(CLX_触发键数组.Length())  ; 移除最后一个键
        CLX_触发时间数组.RemoveAt(CLX_触发时间数组.Length())  ; 移除最后一个时间
        CLX_触发时间差.RemoveAt(CLX_触发时间差.Length())  ; 移除最后一个时间差

        ; 移除内置变量数组的最后一个元素
        A_ThisHotkey_数组.RemoveAt(A_ThisHotkey_数组.Length())
        A_ThisKey_数组.RemoveAt(A_ThisHotkey_数组.Length())
        A_PriorKey_数组.RemoveAt(A_PriorKey_数组.Length())
        A_PriorHotkey_数组.RemoveAt(A_PriorHotkey_数组.Length())
    }
}

isDoubleCombo(maxInterval := 300) {
    global CLX_触发键数组, CLX_触发时间差

    ; 确保数组有足够的元素
    if (CLX_触发键数组.Length() < 2) {
        return false  ; 不构成双连击
    }

    ; 判断双连击
    if (CLX_触发键数组[1] == CLX_触发键数组[2] ){
        if (CLX_触发时间差[1] <= maxInterval) {
            return true  ; 构成双连击
        }
    }

    return false  ; 不构成双连击
}

isTripleCombo(maxInterval := 300) {
    global CLX_触发键数组, CLX_触发时间差

    ; 确保数组有足够的元素
    if (CLX_触发键数组.Length() < 3) {
        return false  ; 不构成三连击
    }

    ; 判断三连击
    if (CLX_触发键数组[1] == CLX_触发键数组[2]
        && CLX_触发键数组[1] == CLX_触发键数组[3]
        && CLX_触发时间差[1] <= maxInterval
        && CLX_触发时间差[2] <= maxInterval) {
        return true  ; 构成三连击
    }

    return false  ; 不构成三连击
}

show_info2(other_info := ""){

        global CurrentMode, LAltMode
        ;CurrentMode += 1
        tip_str := "CurrentMode: " CurrentMode "`n"
         . "LAltMode: " LAltMode "`n"
         . "other_info: " other_info "`n"


    ToolTip % tip_str
     ; 设置定时器在1秒钟后关闭ToolTip
    SetTimer, CloseToolTip, -1000  ; 间隔1000毫秒(1秒)后执行CloseToolTip标签一次

}
; 更新当前模式
hotKeyDownMode(threshold := 250) {
    global CurrentMode
    global KeyHoldMode, DoubleComboMode, LAltMode, LCtrlMode

    ;return
    ; 检查触发键是否存在
    if (CLX_触发键数组.Length() < 2) {
                   ;CurrentMode := 1
                 show_info2("不足两个")
        return CurrentMode ; 没有足够的键按下记录
    }

    ; 判断双击（DoubleComboMode）逻辑
    DoubleComboMode := (A_ThisKey_数组[1] == A_ThisKey_数组[2])
    if !DoubleComboMode {

        ;CurrentMode := 2
        show_info2("与上次不同状态")
        return CurrentMode
    }

    if (CLX_触发时间差[1] > threshold) {
          ;CurrentMode := 3
            show_info2("清除状态")
        return CurrentMode
    } else {

        CurrentMode |= DoubleComboMode
         show_info2("双击状态")
    }

    ; 检查 LAlt 和 LCtrl 模式
    if (A_ThisKey_数组[1] == "LAlt") {

        CurrentMode |= LAltMode
                    show_info2("双击LALT")

    } else if (A_ThisKey_数组[1] == "LCtrl") {
        CurrentMode |= LCtrlMode
          show_info2("双击LCtrl")
    }




}


hotKeyUpMode(threshold:= 250) {
    global CurrentMode
    ; 处理按键释放后的逻辑
    ; 例如，退出当前模式，清理状态等
    if (CLX_触发时间差[1] > threshold) {
        ; 当模式不为0时，清除当前模式
        clearMode()
    }

}

clearMode() {
    ; 清除当前模式的状态
    global CurrentMode
    CurrentMode := 0
    ToolTip 退出鼠标模式
     ; 设置定时器在1秒钟后关闭ToolTip
    SetTimer, CloseToolTip, -200  ; 间隔1000毫秒(1秒)后执行CloseToolTip标签一次
    return CurrentMode
}


; 模拟一个方法来检测按键是否保持按下
isKeyHold() {
    ; 实现你自己的逻辑来检查是否按键保持按下
    ; 这里只是一个占位符函数
    return false
}

CloseToolTip:
    ToolTip  ; 关闭ToolTip
    ;return false ;return不能适用，对程序顺序有影响