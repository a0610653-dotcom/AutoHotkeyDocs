#SingleInstance Force
SetBatchLines, -1
Process, Priority,, High

toggle := false

; F8：開始 / 停止
F8::
toggle := !toggle
return

; F9：緊急停止（直接關閉）
F9::
ExitApp

; 主循環（常駐）
Loop
{
    if (toggle)
    {
        ; ===== 要連續按的鍵 =====
        SendInput, {Space}
        
        ; 理論最小延遲（接近 1ms 極限）
        Sleep, 1
    }
    else
    {
        Sleep, 10
    }
}
