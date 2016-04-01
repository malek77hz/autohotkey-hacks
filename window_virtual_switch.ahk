#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Ctrl+Win+Alt+ (left or right) moves the current window across virtual screens
!^#Right:: 
WinGet, THIS_ID, ID, A
WinSet, Alwaysontop, On , ahk_id %THIS_ID% 
WinSet, ExStyle, ^%WS_EX_TOOLWINDOW%, ahk_id %THIS_ID%
send {LWin down}{LCtrl down}{Right}{LWin up}{LCtrl up}
WinSet, ExStyle, ^%WS_EX_TOOLWINDOW%, ahk_id %THIS_ID% 
WinSet, Alwaysontop, Off , ahk_id %THIS_ID%
WinActivate, ahk_id %THIS_ID%
return

!^#Left:: 
WinGet, THIS_ID, ID, A
Winset, Alwaysontop, On , ahk_id %THIS_ID%
WinSet, ExStyle, ^%WS_EX_TOOLWINDOW%, ahk_id %THIS_ID%
send {LWin down}{LCtrl down}{Left}{LWin up}{LCtrl up}
WinSet, ExStyle, ^%WS_EX_TOOLWINDOW%, ahk_id %THIS_ID% 
WinSet, Alwaysontop, Off , ahk_id %THIS_ID%
WinActivate, ahk_id %THIS_ID%
return