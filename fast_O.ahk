#SingleInstance Force
SetBatchLines, -1
Process, Priority,, High

toggle := false

; F8：開始 / 暫停
F8::
toggle := !toggle
return

; F9：緊急停止（立即關閉）
F9::
ExitApp

; 主循環
Loop
{
    if (toggle)
    {
        ; ===== 連續按 O =====
        SendInput, o

        ; Windows 可達的最小穩定延遲（約 1ms）
        Sleep, 1
    }
    else
    {
        Sleep, 10
    }
}
