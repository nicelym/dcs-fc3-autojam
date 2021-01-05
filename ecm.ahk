#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#UseHook On 
#MaxThreadsPerHotkey 2 ; Allow toggle key over 1 thread

SetKeyDelay,1,50

^+d::
toggle := !toggle

Loop
{
    if (toggle) {
        Send, e
        Sleep 16000
    } else {
        break
    }
    if (toggle) {
        Send, e
        Sleep 1000
    } else {
        break
    }
}
return
