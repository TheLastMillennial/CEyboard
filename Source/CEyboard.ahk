#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendInput,Mode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Keybindings by TheLastMillennial
;Cemetech: https://www.cemetech.net/forum/viewtopic.php?t=17392
;Github: https://github.com/TheLastMillennial/ti84plusce-autohotkey

;keyStatus 0 is number input; keyStatus 1 is alpha input; keyStatus 2 is emulator input

alpha := false
second := false
keyStatus := 0
numLState := GetKeyState("NumLock", "T")
triggerSleep := false


TrayTip, CEyboard, Press [alpha] then [mode] to swap modes. Numlock status: %numLState%, 2, 32

;y= to graph. The 2nd and alpha add F6 to F15 capabilities
<^<#F1:: ;y=
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, {F11}
		else if second  ; 2nd
			SendInput, {F6}
		alpha := false
		second := false
		
	}
	else 									; no modifier
		SendInput, {F1}
	Return
<^<#F2:: ;window
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha		; Alpha
			SendInput, {F12}
		else if second  ; 2nd
			SendInput, {F7}
		alpha := false
		second := false
	}
	else 									; no modifier
		SendInput, {F2}
	Return
<^<#F3:: ;zoom
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, {F13}
		else if second  ; 2nd
			SendInput, {F8}
		alpha := false
		second := false
	}
	else 									; no modifier
		SendInput, {F3}
	Return
<^<#T:: ;trace
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, {F14}
		else if second  ; 2nd
			SendInput, {F9}
		alpha := false
		second := false
	}
	else 									; no modifier
		SendInput, {F4}
	Return
<^<#F5:: ;graph
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, {F15}
		else if second  ; 2nd
			SendInput, {F10}
		alpha := false
		second := false
	}
	else 									; no modifier
		SendInput, {F5}
	Return

;2nd to right arrow
<^<#F6:: ;2nd
	second := !second
	Return
<^<#<!F6:: 	;mode							;handles mode swapping
	if (alpha or second) or (A_PriorHotKey = "<^<#<!F5" and A_TimeSincePriorHotkey < 750) ;if on key was pressed les than 750ms ago
	{
		if alpha 		; Alpha
		{
			keyStatus:=keyStatus+1
			if(keyStatus = 3)
				keyStatus:=0
			if(keyStatus=0)
				TrayTip, CEyboard, Mode 0: Numeric input (default), 2, 16, 32
			if(keyStatus=1)
				TrayTip, CEyboard, Mode 1: Alpha input, 2, 16, 32
			if(keyStatus=2)
				TrayTip, CEyboard, Mode 2: Emulator input, 2, 16, 32
		}
		else if second   ; 2nd
			SendInput, {Escape}
		else if (A_PriorHotKey = "<^<#<!F5") ; On
		{
			if triggerSleep
				SendInput, {Sleep}
			triggerSleep := false
		}
		alpha := false
		second := false
	}
	else 									; no modifier
		if (keyStatus !=2)
		{
			SetNumLockState % !GetKeyState("NumLock", "T")
			numLState := GetKeyState("NumLock", "T")
			TrayTip, CEyboard, NumLock set to %numLState%, 1, 16, 32 ;delete this line if you don't want a notification whenever numlock changes
		}
	Return
	

<^<#<!<+F4:: ;del
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, ^{Delete}
		else if second  ; 2nd
			SendInput, {NumpadIns}
		alpha := false
		second := false
	}
	else 
		SendInput, {Delete}
	Return
<#<!<+Left::
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, ^{Left}
		else if second  ; 2nd
			SendInput, +{Left}
			
	alpha := false
	second := false
	}
	else 									; no modifier
		SendInput, {Left}
	Return
<#<!<+Up::
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, ^{Up}
		else if second  ; 2nd
			SendInput, +{Up}
	alpha := false
	second := false
	}
	else 									; no modifier
		SendInput, {Up}
	Return
<#<!<+Right::
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, ^{Right}
		else if second  ; 2nd
			SendInput, +{Right}
	alpha := false
	second := false
	}
	else 									; no modifier
		SendInput, {Right}
	Return

;alpha to down arrow
<^<#F7:: ;alpha
	alpha := !alpha ;alpha key was pressed, toggle it
	
	if (second and keyStatus != 2)
	{
		if keyStatus = 0 ;numeric input
		{
			keyStatus := 1 ;set key status to alpha input (A-Lock)
			TrayTip, CEyboard, Mode 1: Alpha Input, 2, 16, 32
		}
		else if keyStatus = 1
		{
			keyStatus := 0 ;set keyStatus to numeric input
			TrayTip, CEyboard, Mode 0: Numeric Input, 2, 16, 32
		}
	}

			
	Return
<^<#<!F7:: ;XT0n
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, {NumpadDiv}
		else if second  ; 2nd
			SendInput, {Media_Play_Pause}
	alpha := false
	second := false
	}
	else 									; no modifier
		SetCapsLockState % !GetKeyState("CapsLock", "T") ; Toggles capslock
	Return
<^<#<!<+F5:: ; stat
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, {Media_Next}
		else if second  ; 2nd
			SendInput, {{}{}}{Left}         ;Outputs {}
	alpha := false
	second := false
	}
	else 									; no modifier
		SendInput, {Tab}
	Return
<#<!<+Down::
	if (keyStatus != 2)
	if alpha or second
	{
		if alpha 		; Alpha
			SendInput, ^{Down}
		else if second  ; 2nd
			SendInput, +{Down}
	alpha := false
	second := false
	}
	else 									; no modifier
		SendInput, {Down}
	Return
	
;math to clear
<^<#F8:: ;Math
	if (keyStatus = 0)
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, A
				else if second  ; 2nd
					SendInput, ^a
			}
			else 								; no modifier
				SendInput, {Launch_App2} 		;Launches the calculator
		
	}
	else if (keyStatus = 1)
	{
		if alpha 		; Alpha
			SendInput, A
		else if second  ; 2nd
			SendInput, ^a
		else								; no modifier
			SendInput, a
	}
	alpha := false
	second := false
	Return
<^<#<!F8:: ;apps
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, B
				else if second  ; 2nd
					SendInput, ^b
			}
			else 								; no modifier
			{
				SendInput, {AppsKey} ; open right click menu
				Sleep 50 ;A delay is necessary to prevent the menu from flickering
			}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, B
			else if second  ; 2nd
				SendInput, ^b
			else								; no modifier
				SendInput, b
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F6:: ;prgm
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, C
				else if second  ; 2nd
					SendInput, ^c
			}
			else 								; no modifier
				SendInput, ^+{Escape}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, C
			else if second  ; 2nd
				SendInput, ^c
			else								; no modifier
				SendInput, c
	}
	
	alpha := false
	second := false
	Return
<^<#<+F2:: ;vars
	if (keyStatus != 2)						;[Numeric and Alpha Input]
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, {Volume_Down}
			else if second  ; 2nd
				SendInput, {Volume_Up}
		}										; no modifier
		else
			SendInput, #{Tab}
	
	Return
<^<#<+F9:: ;clear
	if (keyStatus != 2)			;[Numeric and Alpha Input]
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, ^{Backspace}			
			else if second  ; 2nd
			{
				SendInput, {Home}+{End}{Delete}
				
			}
		}										; no modifier
		else
			SendInput, {Backspace}
	
	alpha := false
	second := false
	Return
	
;x^-1 to ^
<^<#F9:: ;x^-1
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, D
			else if second  ; 2nd
				SendInput, []{Left}
		}										; no modifier
		else
			SendInput, x{^}-1
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, D
			else if second  ; 2nd
				SendInput, ^d
			else								; no modifier
				SendInput, d
	}
	
	alpha := false
	second := false
	Return
<^<#<!F9:: ;sin
		if (keyStatus = 0)						;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, E
			else if second  ; 2nd
				SendInput, sin{^}-1(){Left}
		}										; no modifier
		else
			SendInput, sin(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, E
			else if second  ; 2nd
				SendInput, ^e
			else								; no modifier
				SendInput, e
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F7:: ;cos
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, F
			else if second  ; 2nd
				SendInput, cos{^}-1(){Left}
		}							; no modifier
		else
			SendInput, cos(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, F
			else if second  ; 2nd
				SendInput, ^f
			else								; no modifier
				SendInput, f
	}
	
	alpha := false
	second := false
	Return
<^<#<+F3:: ;tan
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, G
			else if second  ; 2nd
				SendInput, tan{^}-1(){Left}
		}										; no modifier
		else
			SendInput, tan(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, G
			else if second  ; 2nd
				SendInput, ^g
			else								; no modifier
				SendInput, g
	}
	
	alpha := false
	second := false
	Return
<^<#<+F11:: ;^
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, H
			else if second  ; 2nd
				SendInput, π
		}										; no modifier
		else
			Send, {^}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, H
			else if second  ; 2nd
				SendInput, ^h
			else								; no modifier
				SendInput, h
	}
	
	alpha := false
	second := false
	Return

;x^2 to /
<^<#<!F1:: ;x^2
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, I
			else if second  ; 2nd
				SendInput, √(){Left}
		}										; no modifier
		else
			Send, x{^}2
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, I
			else if second  ; 2nd
				SendInput, ^i
			else								; no modifier
				SendInput, i
	}
	
	alpha := false
	second := false
	Return
<^<#<!F10:: ;,
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, J
			else if second  ; 2nd
				SendInput, E
		}										; no modifier
		else
			SendInput, ,
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, J
			else if second  ; 2nd
				SendInput, ^j
			else								; no modifier
				SendInput, j
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F8:: ;(
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, K
			else if second  ; 2nd
				SendInput, {{}
		}										; no modifier
		else
			SendInput, (
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, K
			else if second  ; 2nd
				SendInput, ^k
			else								; no modifier
				SendInput, k
	}
	
	alpha := false
	second := false
	Return
<^<#<+F4:: ;)
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, L
			else if second  ; 2nd
				SendInput, {}}
		}										; no modifier
		else
			SendInput, )
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, L
			else if second  ; 2nd
				SendInput, ^l
			else								; no modifier
				SendInput, l
	}
	
	alpha := false
	second := false
	Return
<^<#NumpadDiv::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, M
			else if second  ; 2nd
				SendInput, e
		}										; no modifier
		else
			SendInput, {NumpadDiv}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, M
			else if second  ; 2nd
				SendInput, ^m
			else								; no modifier
				SendInput, m
	}
	
	alpha := false
	second := false
	Return
	
; log to *
<^<#<!F2:: ;log
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, N
			else if second  ; 2nd
				SendInput, 10{^}(){Left}
		}										; no modifier
		else
			SendInput, log(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, N
			else if second  ; 2nd
				SendInput, ^n
			else								; no modifier
				SendInput, n
	}
	
	alpha := false
	second := false
	Return
<^<#<!F11:: ;7
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, O
			else if second  ; 2nd
				SendInput, u
		}										; no modifier
		else
			SendInput, {Numpad7}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, O
			else if second  ; 2nd
				SendInput, ^o
			else								; no modifier
				SendInput, o
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F9:: ;8
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, P
			else if second  ; 2nd
				SendInput, v
		}										; no modifier
		else
			SendInput, {Numpad8}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, P
			else if second  ; 2nd
				SendInput, ^p
			else								; no modifier
				SendInput, p
	}
	
	alpha := false
	second := false
	Return
<^<#<+F5:: ;9
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, Q
			else if second  ; 2nd
				SendInput, w
		}										; no modifier
		else
			SendInput, {Numpad9}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, Q
			else if second  ; 2nd
				SendInput, ^q
			else								; no modifier
				SendInput, q
	}
	
	alpha := false
	second := false
	Return
<^<#NumpadMult::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, R
			else if second  ; 2nd
				SendInput, [
		}										; no modifier
		else
			SendInput, {NumpadMult}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, R
			else if second  ; 2nd
				SendInput, ^r
			else								; no modifier
				SendInput, r
	}
	
	alpha := false
	second := false
	Return
	
;ln to -
<^<#<!F3::
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, S
			else if second  ; 2nd
				SendInput, e{^}(){Left}
		}										; no modifier
		else
			SendInput, ln(){Left}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, S
			else if second  ; 2nd
				SendInput, ^s
			else								; no modifier
				SendInput, s
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F1:: ;4
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, T
			else if second  ; 2nd
				SendInput, ^t
		}										; no modifier
		else
			SendInput, {Numpad4}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, T
			else if second  ; 2nd
				SendInput, ^t
			else								; no modifier
				SendInput, t
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F10:: ;5
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, U
			else if second  ; 2nd
				SendInput, ^u
		}										; no modifier
		else
			SendInput, {Numpad5}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, U
			else if second  ; 2nd
				SendInput, ^u
			else								; no modifier
				SendInput, u
	}
	
	alpha := false
	second := false
	Return
<^<#<+F6:: ;6
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, V
				else if second  ; 2nd
					SendInput, ^v
			}
			else 								; no modifier
				SendInput, {Numpad6}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, V
			else if second  ; 2nd
				SendInput, ^v
			else							; no modifier
				SendInput, v
	}
	
	alpha := false
	second := false
	Return
<^<#NumpadSub:: ;-
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, W
				else if second  ; 2nd
					SendInput, ]
			}
			else 								; no modifier
				SendInput, {NumpadSub}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, W
			else if second  ; 2nd
				SendInput, ^w
			else							; no modifier
				SendInput, w
	}
	
	alpha := false
	second := false
	Return

;sto-> to +
<^<#<!F4:: ;sto->
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, X
				else if second  ; 2nd
					SendInput, ^v
			}
			else 								; no modifier
				SendInput, ^c
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, X
			else if second  ; 2nd
				SendInput, ^x
			else							; no modifier
				SendInput, x
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F2:: ;1
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, Y
				else if second  ; 2nd
					SendInput, ^y
			}
			else 								; no modifier
				SendInput, {Numpad1}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, Y
			else if second  ; 2nd
				SendInput, ^y
			else							; no modifier
				SendInput, y
	}
	
	alpha := false
	second := false
	Return
<^<#<!<+F11:: ;2
	if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
			{
				if alpha 		; Alpha
					SendInput, Z
				else if second  ; 2nd
					SendInput, ^z
			}
			else 								; no modifier
				SendInput, {Numpad2}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, Z
			else if second  ; 2nd
				SendInput, ^z
			else							; no modifier
				SendInput, z
	}
	
	alpha := false
	second := false
	Return
<^<#<+F7:: ;3
		if (keyStatus = 0)							;[Numeric Input]
	{
		if alpha or second
		{
			if alpha 		; Alpha
				SendInput, Θ
			else if second  ; 2nd
				SendInput, `%
		}							; no modifier
		else
			SendInput, {Numpad3}
	}
	else if (keyStatus = 1)					;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, Θ
			else if second  ; 2nd
				SendInput, `%
			else							; no modifier
				SendInput, θ
	}
	
	alpha := false
	second := false
	Return
<^<#NumpadAdd:: ;+
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, {"}
			else if second  ; 2nd
				SendInput, ^{Tab}
		}										; no modifier
		else
			SendInput, {NumpadAdd}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, {'}
			else if second  ; 2nd
				SendInput, ``
			else								; no modifier
				SendInput, {"}
	}
	
	alpha := false
	second := false
	Return
	
;on to enter
<^<#<!F5:: ;on
	if (keyStatus != 2)							;[Numeric and AlphaInput]
	{
		triggerSleep := false
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, {CtrlBreak}
			else if second  ; 2nd
			{
				triggerSleep := true
				TrayTip, CEyboard, Press [mode] to put computer to sleep. Wait 1 second to cancel., 2, 32
			}
			
	alpha := false
	second := false
		}										; no modifier
		else
			SendInput, {Pause}
	}
	Return	
<^<#<!<+F3:: ;0
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, {Space}
			else if second  ; 2nd
				SendInput, {Help}
		}										; no modifier
		else
			SendInput, {Numpad0}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, {Space}
			else if second  ; 2nd
				SendInput, ^{Space}
			else								; no modifier
				SendInput, {Space}
	}
	
	alpha := false
	second := false
	Return
<^<#<+F1:: ;.
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, :
			else if second  ; 2nd
				SendInput, 𝑖
		}										; no modifier
		else
			SendInput, {NumpadDot}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, {;}
			else if second  ; 2nd
				SendInput, {NumpadDot}
			else								; no modifier
				SendInput, {:}
	}
	
	alpha := false
	second := false
	Return
<^<#<+F8:: ;(-)
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, ?
			else if second  ; 2nd
				SendInput, ^+z
		}										; no modifier
		else
			SendInput, {NumpadSub}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, {!}
			else if second  ; 2nd
				SendInput, _
			else								; no modifier
				SendInput, ?
	}
	
	alpha := false
	second := false
	Return
NumpadEnter:: ;Enter
	if (keyStatus = 0)							;[Numeric Input]
	{
		if (alpha or second) and (A_TimeSincePriorHotkey < 750)
		{
			if alpha 		; Alpha
				SendInput, {Enter}
			else if second  ; 2nd
				SendInput, ^{Enter}
		}										; no modifier
		else
			SendInput, {NumpadEnter}
	}
	else if (keyStatus = 1)						;[Alpha Input]
	{
			if alpha 		; Alpha
				SendInput, +{Enter}
			else if second  ; 2nd
				SendInput ^+z
			else								; no modifier
				SendInput, {NumpadEnter}
	}
	alpha := false
	second := false
	Return
	