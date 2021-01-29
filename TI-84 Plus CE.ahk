#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendInput,Mode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Keybindings by TheLastMillennial
;Cemetech: https://www.cemetech.net/forum/viewtopic.php?t=17392
;Github: https://github.com/TheLastMillennial/ti84plusce-autohotkey

;keyStatus 0 is number input; keyStatus 1 is alpha input; keyStatus 2 is emulator input
keyStatus := 0

TrayTip, TI-84 Plus CE Hotkey, Press [alpha] then [mode] to swap modes, 2




;y= to graph the 2nd and alpha add F6 to F15 capabilities
<^<#F1::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {F11}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {F6}
	}
	else 								; no modifier
		SendInput, {F1}
	Return
<^<#F2::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7		; Alpha
			SendInput, {F13}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {F8}
	}
	else 								; no modifier
		SendInput, {F3}
	Return
<^<#F3::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {F13}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {F8}
	}
	else 								; no modifier
		SendInput, {F3}
	Return
<^<#T::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {F14}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {F9}
	}
	else 								; no modifier
		SendInput, {F4}
	Return
<^<#F5::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {F15}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {F10}
	}
	else 								; no modifier
		SendInput, {F5}
	Return

;2nd to right arrow
<^<#F6:: ;2nd
	if (keyStatus != 2)
	SendInput, {>!} ;Sends right alt
	Return
<^<#<!F6:: 	;mode							;handles mode swapping
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
		{
			keyStatus:=keyStatus+1
			if(keyStatus = 3)
				keyStatus:=0
			if(keyStatus=0)
				TrayTip, TI-84 Plus CE Hotkey, Mode 0: Numeric input (default), 2, 16
			if(keyStatus=1)
				TrayTip, TI-84 Plus CE Hotkey, Mode 1: Alpha input, 2, 16
			if(keyStatus=2)
				TrayTip, TI-84 Plus CE Hotkey, Mode 2: Emulator input, 2, 16
		}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {Escape}
	}
	else 								; no modifier
		SetNumLockState % !GetKeyState("NumLock", "T")
	Return
	

<^<#<!<+F4:: ;del
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {>^Delete}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {NumpadIns}
	}
	else 
		SendInput, {Delete}
	Return
<#<!<+Left::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {>^Left}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {>+Left}
	}
	else 								; no modifier
		SendInput, {Left}
	Return
<#<!<+Up::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {>^Up}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {>+Up}
	}
	else 								; no modifier
		SendInput, {Up}
	Return
<#<!<+Right::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {>^Right}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {>+Right}
	}
	else 								; no modifier
		SendInput, {Right}
	Return

;alpha to down arrow
<^<#F7:: ;alpha
	if (keyStatus != 2)
	SendInput, {>^} ; Sends right ctrl
	Return
<^<#<!F7:: ;XT0n
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, [NumpadDiv}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {Media_Play_Pause}
	}
	else 								; no modifier
		SetCapsLockState % !GetKeyState("CapsLock", "T") ; Toggles capslock
	Return
<^<#<!<+F5:: ; stat
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {Media_Next}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {Media_Prev}
	}
	else 								; no modifier
		SendInput, {Tab}
	Return
<#<!<+Down::
	if (keyStatus != 2)
	if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, {>^Down}
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, {>+Down}
	}
	else 								; no modifier
		SendInput, {Down}
	Return
	
;math to clear
<^<#F8:: ;Math
	if (keyStatus = 0)
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, A
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^a
			}
			else 								; no modifier
				SendInput, {Launch_App2} 		;Launches the calculator
		
	}
	else if (keyStatus = 1)
	{
		if A_PriorHotKey = <^<#F7 		; Alpha
			SendInput, A
		else if A_PriorHotKey = <^<#F6  ; 2nd
			SendInput, ^a
		else							; no modifier
			SendInput, a
	}
	Return
<^<#<!F8:: ;apps
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, B
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^b
			}
			else 								; no modifier
				SendInput, {AppsKey} ; open right click menu
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, B
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^b
			else							; no modifier
				SendInput, b
	}
	
	Return
<^<#<!<+F6::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, C
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^c
			}
			else 								; no modifier
				SendInput, {>^>+Escape}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, C
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^c
			else							; no modifier
				SendInput, c
	}
	
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
<^<#<+F6:: ;6
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, V
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^v
			}
			else 								; no modifier
				SendInput, {Numpad6}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, V
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^v
			else							; no modifier
				SendInput, v
	}
	
	Return
<^<#NumpadSub:: ;-
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, W
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^w
			}
			else 								; no modifier
				SendInput, {NumpadSub}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, W
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^w
			else							; no modifier
				SendInput, w
	}
	
	Return

;sto-> to +
<^<#<!F4:: ;sto->
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, X
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^v
			}
			else 								; no modifier
				SendInput, ^c
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, X
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^x
			else							; no modifier
				SendInput, x
	}
	
	Return
<^<#<!<+F2:: ;1
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, Y
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^1
			}
			else 								; no modifier
				SendInput, {Numpad1}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, Y
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^y
			else							; no modifier
				SendInput, y
	}
	
	Return
<^<#<!<+F11:: ;2
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey != <^<#F7) and (A_PriorHotKey != <^<#F6)) and (A_TimeSincePriorHotkey < 750)
			{
				if A_PriorHotKey = <^<#F7 		; Alpha
					SendInput, Z
				else if A_PriorHotKey = <^<#F6  ; 2nd
					SendInput, ^z
			}
			else 								; no modifier
				SendInput, {Numpad2}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if A_PriorHotKey = <^<#F7 		; Alpha
				SendInput, Z
			else if A_PriorHotKey = <^<#F6  ; 2nd
				SendInput, ^z
			else							; no modifier
				SendInput, z
	}
	
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
	