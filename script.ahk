#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#NoTrayIcon

; Volume
; TODO make volume step bigger

#F10::
Send {Volume_Mute}
return

#F11::
Send {Volume_Down}
return

#F12::
Send {Volume_Up}
return

; Other

; Shift + Caps toggles case
+CapsLock::CapsLock
CapsLock::Esc
