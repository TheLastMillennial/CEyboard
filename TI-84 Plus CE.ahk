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

;y= to graph. The 2nd and alpha add F6 to F15 capabilities
<^<#F1:: ;y=
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, {F11}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {F6}
	}
	else 									; no modifier
		SendInput, {F1}
	Return
<^<#F2:: ;window
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7")		; Alpha
			SendInput, {F13}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {F8}
	}
	else 									; no modifier
		SendInput, {F3}
	Return
<^<#F3:: ;zoom
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, {F13}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {F8}
	}
	else 									; no modifier
		SendInput, {F3}
	Return
<^<#T:: ;trace
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, {F14}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {F9}
	}
	else 									; no modifier
		SendInput, {F4}
	Return
<^<#F5:: ;graph
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, {F15}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {F10}
	}
	else 									; no modifier
		SendInput, {F5}
	Return

;2nd to right arrow
<^<#F6:: ;2nd
	if (keyStatus != 2)
	SendInput, {>!} ;Sends right alt
	Return
<^<#<!F6:: 	;mode							;handles mode swapping
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
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
		else if (A_PriorHotKey = "<^<#F6")   ; 2nd
			SendInput, {Escape}
		else if (A_PriorHotKey = "<^<#<!F5") ; On
			SendInput, {Sleep}
	}
	else 									; no modifier
		if (keyStatus !=2)
		{
			SetNumLockState % !GetKeyState("NumLock", "T")
			NumLState := GetKeyState("NumLock", "T")
			TrayTip, TI-84 Plus CE Hotkey, NumLock set to %NumLState%, 1, 16 ;delete this line if you don't want a notification whenever numlock changes
		}
	Return
	

<^<#<!<+F4:: ;del
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, ^{Delete}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {NumpadIns}
	}
	else 
		SendInput, {Delete}
	Return
<#<!<+Left::
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, ^{Left}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, +{Left}
	}
	else 									; no modifier
		SendInput, {Left}
	Return
<#<!<+Up::
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, ^{Up}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, +{Up}
	}
	else 									; no modifier
		SendInput, {Up}
	Return
<#<!<+Right::
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, ^{Right}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, +{Right}
	}
	else 									; no modifier
		SendInput, {Right}
	Return

;alpha to down arrow
<^<#F7:: ;alpha
	if (keyStatus != 2)
	SendInput, {>^} ; Sends right ctrl
	Return
<^<#<!F7:: ;XT0n
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, {NumpadDiv}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {Media_Play_Pause}
	}
	else 									; no modifier
		SetCapsLockState % !GetKeyState("CapsLock", "T") ; Toggles capslock
	Return
<^<#<!<+F5:: ; stat
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, {Media_Next}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, {{}{}}{Left}         ;Outputs {}
	}
	else 									; no modifier
		SendInput, {Tab}
	Return
<#<!<+Down::
	if (keyStatus != 2)
	if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, ^{Down}
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, +{Down}
	}
	else 									; no modifier
		SendInput, {Down}
	Return
	
;math to clear
<^<#F8:: ;Math
	if (keyStatus = 0)
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, A
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^a
			}
			else 								; no modifier
				SendInput, {Launch_App2} 		;Launches the calculator
		
	}
	else if (keyStatus = 1)
	{
		if (A_PriorHotKey = "<^<#F7") 		; Alpha
			SendInput, A
		else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			SendInput, ^a
		else								; no modifier
			SendInput, a
	}
	Return
<^<#<!F8:: ;apps
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, B
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^b
			}
			else 								; no modifier
				SendInput, {AppsKey} ; open right click menu
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, B
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^b
			else								; no modifier
				SendInput, b
	}
	
	Return
<^<#<!<+F6:: ;prgm
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, C
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^c
			}
			else 								; no modifier
				SendInput, {>^>+Escape}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, C
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^c
			else								; no modifier
				SendInput, c
	}
	
	Return
<^<#<+F2:: ;vars
	if (keyStatus != 2)						;[Numeric and Alpha Input]
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {Volume_Down}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, {Volume_Up}
		}										; no modifier
		else
			SendInput, >#{Tab}
	
	Return
<^<#<+F9:: ;clear
	if (keyStatus != 2)			;[Numeric and Alpha Input]
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, ^{Backspace}			
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
			{
				SendInput, {Home}+{End}{Delete}
				
			}
		}										; no modifier
		else
			SendInput, {Backspace}
	
	Return
	
;x^-1 to ^
<^<#F9:: ;x^-1
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, D
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, []{Left}
		}										; no modifier
		else
			SendInput, x{^}-1
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, D
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^d
			else								; no modifier
				SendInput, d
	}
	
	Return
<^<#<!F9:: ;sin
		if (keyStatus = 0)						;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, E
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, sin{^}-1(){Left}
		}										; no modifier
		else
			SendInput, sin(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, E
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^e
			else								; no modifier
				SendInput, e
	}
	
	Return
<^<#<!<+F7:: ;cos
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, F
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, cos{^}-1(){Left}
		}							; no modifier
		else
			SendInput, cos(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, F
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^f
			else								; no modifier
				SendInput, f
	}
	
	Return
<^<#<+F3:: ;tan
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, G
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, tan{^}-1(){Left}
		}										; no modifier
		else
			SendInput, tan(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, G
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^g
			else								; no modifier
				SendInput, g
	}
	
	Return
<^<#<+F11:: ;^
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, H
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, π
		}										; no modifier
		else
			Send, {^}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, H
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^h
			else								; no modifier
				SendInput, h
	}
	
	Return

;x^2 to /
<^<#<!F1:: ;x^2
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, I
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, √(){Left}
		}										; no modifier
		else
			Send, x{^}2
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, I
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^i
			else								; no modifier
				SendInput, i
	}
	
	Return
<^<#<!F10:: ;,
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, J
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, E
		}										; no modifier
		else
			SendInput, ,
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, J
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^j
			else								; no modifier
				SendInput, j
	}
	
	Return
<^<#<!<+F8:: ;(
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, K
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, {{}
		}										; no modifier
		else
			SendInput, (
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, K
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^k
			else								; no modifier
				SendInput, k
	}
	
	Return
<^<#<+F4:: ;)
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, L
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, {}}
		}										; no modifier
		else
			SendInput, )
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, L
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^l
			else								; no modifier
				SendInput, l
	}
	
	Return
<^<#NumpadDiv::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, M
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, e
		}										; no modifier
		else
			SendInput, {NumpadDiv}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, M
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^m
			else								; no modifier
				SendInput, m
	}
	
	Return
	
; log to *
<^<#<!F2:: ;log
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, N
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, 10{^}(){Left}
		}										; no modifier
		else
			SendInput, log(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, N
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^n
			else								; no modifier
				SendInput, n
	}
	
	Return
<^<#<!F11:: ;7
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, O
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, u
		}										; no modifier
		else
			SendInput, {Numpad7}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, O
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^o
			else								; no modifier
				SendInput, o
	}
	
	Return
<^<#<!<+F9:: ;8
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, P
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, v
		}										; no modifier
		else
			SendInput, {Numpad8}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, P
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^p
			else								; no modifier
				SendInput, p
	}
	
	Return
<^<#<+F5:: ;9
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, Q
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, w
		}										; no modifier
		else
			SendInput, {Numpad9}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, Q
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^q
			else								; no modifier
				SendInput, q
	}
	
	Return
<^<#NumpadMult::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, R
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, [
		}										; no modifier
		else
			SendInput, {NumpadMult}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, R
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^r
			else								; no modifier
				SendInput, r
	}
	
	Return
	
;ln to -
<^<#<!F3::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, S
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, e{^}(){Left}
		}										; no modifier
		else
			SendInput, ln(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, S
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^s
			else								; no modifier
				SendInput, s
	}
	
	Return
<^<#<!<+F1:: ;4
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, T
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^t
		}										; no modifier
		else
			SendInput, {Numpad4}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, T
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^t
			else								; no modifier
				SendInput, t
	}
	
	Return
<^<#<!<+F10:: ;5
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, U
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^u
		}										; no modifier
		else
			SendInput, {Numpad5}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, U
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^u
			else								; no modifier
				SendInput, u
	}
	
	Return
<^<#<+F6:: ;6
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, V
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^v
			}
			else 								; no modifier
				SendInput, {Numpad6}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, V
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^v
			else							; no modifier
				SendInput, v
	}
	
	Return
<^<#NumpadSub:: ;-
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, W
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ]
			}
			else 								; no modifier
				SendInput, {NumpadSub}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, W
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^w
			else							; no modifier
				SendInput, w
	}
	
	Return

;sto-> to +
<^<#<!F4:: ;sto->
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, X
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^v
			}
			else 								; no modifier
				SendInput, ^c
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, X
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^x
			else							; no modifier
				SendInput, x
	}
	
	Return
<^<#<!<+F2:: ;1
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, Y
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^y
			}
			else 								; no modifier
				SendInput, {Numpad1}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, Y
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^y
			else							; no modifier
				SendInput, y
	}
	
	Return
<^<#<!<+F11:: ;2
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
			{
				if (A_PriorHotKey = "<^<#F7") 		; Alpha
					SendInput, Z
				else if (A_PriorHotKey = "<^<#F6")  ; 2nd
					SendInput, ^z
			}
			else 								; no modifier
				SendInput, {Numpad2}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, Z
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^z
			else							; no modifier
				SendInput, z
	}
	
	Return
<^<#<+F7:: ;3
		if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7" or A_PriorHotKey = "<^<#F6") and A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, Θ
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, `%
		}							; no modifier
		else
			SendInput, {Numpad3}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, Θ
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, `%
			else							; no modifier
				SendInput, θ
	}
	
	Return
<^<#NumpadAdd:: ;+
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {"}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^{Tab}
		}										; no modifier
		else
			SendInput, {NumpadAdd}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {'}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ``
			else								; no modifier
				SendInput, {"}
	}
	
	Return
	
;on to enter
<^<#<!F5:: ;on
	if (keyStatus != 2)							;[Numeric and AlphaInput]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {CtrlBreak}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				TrayTip, TI-84 Plus CE Hotkey, Press [mode] to put computer to sleep. Wait 1 second to cancel., 2
		}										; no modifier
		else
			SendInput, {Pause}
	}
	
	Return	
<^<#<!<+F3:: ;0
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {Space}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, {Help}
		}										; no modifier
		else
			SendInput, {Numpad0}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {Space}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^{Space}
			else								; no modifier
				SendInput, {Space}
	}
	
	Return
<^<#<+F1:: ;.
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, :
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, 𝑖
		}										; no modifier
		else
			SendInput, {NumpadDot}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {;}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, {NumpadDot}
			else								; no modifier
				SendInput, {:}
	}
	
	Return
<^<#<+F8:: ;(-)
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, ?
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^+z
		}										; no modifier
		else
			SendInput, {NumpadSub}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {!}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, _
			else								; no modifier
				SendInput, ?
	}
	
	Return
;No need to edit Enter, it already works as the enter key
Enter::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if ((A_PriorHotKey = "<^<#F7") or (A_PriorHotKey = "<^<#F6")) and (A_TimeSincePriorHotkey < 750)
		{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, {Enter}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^{Enter}
		}										; no modifier
		else
			SendInput, {Enter}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if (A_PriorHotKey = "<^<#F7") 		; Alpha
				SendInput, +{Enter}
			else if (A_PriorHotKey = "<^<#F6")  ; 2nd
				SendInput, ^+z
			else								; no modifier
				SendInput, {Enter}
	}
	Return
	