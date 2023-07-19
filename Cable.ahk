#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

F2::
Run, ms-settings:sound
WinWaitActive, Settings,, 2
if ErrorLevel
{
    MsgBox, Sound Settings window not found.
    return
}
Sleep, 1000
Click, 525, 1005  ; Open Advanced Sound Settings
Sleep, 1000

PixelSearch, Px, Py, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x60D71E, 0, Fast
if ErrorLevel
{
    MsgBox, The specified pixel color was not found.
    return
}
Sleep, 1000
MouseMove, Px+340, Py+15
Click ; Click Spotify Output dropdown
Sleep 100
Send, {Down 5}
Sleep 100
Send, {Enter 1} ; Select Cable

return
