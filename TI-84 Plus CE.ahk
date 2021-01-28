#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendInput,Mode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Keybindings by TheLastMillennial
;Cemetech: https://www.cemetech.net/forum/viewtopic.php?t=17392
;Github: https://github.com/TheLastMillennial/ti84plusce-autohotkey

;keyStatus 0 is number input; keyStatus 1 is alpha input; keystatus 2 is emulator input
keyStatus := 0

TrayTip, TI-84 Plus CE Hotkey, Press ctrl+win+alt+space to swap modes, 2

;y= to graph
<^<#F1::
	SendInput, {F1}
	Return
<^<#F2::
	SendInput, {F2}
	Return
<^<#F3::
	SendInput, {F3}
	Return
<^<#T::
	SendInput, {F4}
	Return
<^<#F5::
	SendInput, {F5}
	Return

;custom Adds F6-F10
<^>!<#F1::
	SendInput, {F6}
	Return
<^>!<#F2::
	SendInput, {F7}
	Return
<^>!<#F3::
	SendInput, {F8}
	Return
<^>!<#T::
	SendInput, {F9}
	Return
<^>!<#F5::
	SendInput, {F10}
	Return
	
; custom adds F11-F15
<^>^<#F1::
	SendInput, {F11}
	Return
<^>^<#F2::
	SendInput, {F12}
	Return
<^>^<#F3::
	SendInput, {F13}
	Return
<^>^<#T::
	SendInput, {F14}
	Return
<^>^<#F5::
	SendInput, {F15}
	Return
	
	
;2nd to right arrow
<^<#F6::
	SendInput, {>!} ;SendInput,s right alt
	Return
<^<#<!F6::
	SetNumLockState % !GetKeyState("NumLock", "T")
	Return
<^<#<!<+F4::
	SendInput, {Delete}
	Return
<#<!<+Left::
	SendInput, {Left}
	Return
<#<!<+Up::
	SendInput, {Up}
	Return
<#<!<+Right::
	SendInput, {Right}
	Return

;alpha to down arrow
<^<#F7::
	SendInput, {>^} ; SendInput,s right ctrl
	Return
<^<#<!F7::
	SetCapsLockState % !GetKeyState("CapsLock", "T") ; Toggles capslock
	Return
<^<#<!<+F5::
	SendInput, {F7}
	Return
<#<!<+Down::
	SendInput, {Down}
	Return
	
;math to clear
<^<#F8::
	SendInput, {Launch_App2} ; launches calculator
	Return
<^<#<!F8::
	SendInput, {AppsKey} ; open right click menu
	Return
<^<#<!<+F6::
	SendInput, {Media_Play_Pause}
	Return
<^<#<+F2::
	SendInput, {Help}
	Return
<^<#<+F9::
	SendInput, {Backspace}
	Return
	
;x^-1 to ^
<^<#F9::
	Send, x{^}-1
	Return
<^<#<!F9::
	SendInput, sin(
	Return
<^<#<!<+F7::
	SendInput, cos(
	Return
<^<#<+F3::
	SendInput, tan(
	Return
<^<#<+F11::
	Send, {^}
	Return

;x^2 to /
<^<#<!F1::
	Send, x{^}2
	Return
<^<#<!F10::
	SendInput, ,
	Return
<^<#<!<+F8::
	SendInput, (
	Return
<^<#<+F4::
	SendInput, )
	Return
<^<#NumpadDiv::
	SendInput, {NumpadDiv}
	Return
	
; log to *
<^<#<!F2::
	SendInput, log(
	Return
<^<#<!F11::
	SendInput, {Numpad7}
	Return
<^<#<!<+F9::
	SendInput, {Numpad8}
	Return
<^<#<+F5::
	SendInput, {Numpad9}
	Return
<^<#NumpadMult::
	SendInput, {NumpadMult}
	Return
	
;ln to -
<^<#<!F3::
	SendInput, ln(
	Return
<^<#<!<+F1::
	SendInput, {Numpad4}
	Return
<^<#<!<+F10::
	SendInput, {Numpad5}
	Return
<^<#<+F6::
	SendInput, {Numpad6}
	Return
<^<#NumpadSub::
	SendInput, {NumpadSub}
	Return
	
;sto-> to +
<^<#<!F4::
	SendInput, {PrintScreen} ; takes screenshot
	Return
<^<#<!<+F2::
	SendInput, {Numpad1}
	Return
<^<#<!<+F11::
	SendInput, {Numpad2}
	Return
<^<#<+F7::
	SendInput, {Numpad3}
	Return
<^<#NumpadAdd::
	SendInput, {NumpadAdd}
	Return
	
;on to enter
<^<#<!F5::
	SendInput, {Pause}
	Return

;handles swapping modes
<^<#<!Space::
	keyStatus:=keyStatus+1
	if(keyStatus = 3)
		keyStatus:=0
	if(keyStatus=0)
		TrayTip, TI-84 Plus CE Hotkey, Mode 0: Numeric input (default), 2, 16
	if(keyStatus=1)
		TrayTip, TI-84 Plus CE Hotkey, Mode 1: Alpha input, 2, 16
	if(keyStatus=2)
		TrayTip, TI-84 Plus CE Hotkey, Mode 2: Emulator input, 2, 16
	Return
	
<^<#<!<+F3::
	SendInput, {Numpad0}
	Return
<^<#<+F1::
	SendInput, {NumpadDot}
	Return
<^<#<+F8::
	SendInput, {NumpadSub}
	Return
;No need to edit Enter, it already works as the enter key
;Enter::
;	SendInput, {
;	Return
	