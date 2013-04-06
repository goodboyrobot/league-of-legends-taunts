;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

SetBatchLines -1
CoordMode, Pixel, screen
CoordMode, Mouse, screen
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#InstallKeybdHook
SendMode Event
#UseHook

ArrayCount = 0
Loop, Read, %A_ScriptDir%\BEARPUNDATABASE.txt   ; This loop retrieves each line from the file, one at a time.
{
    ArrayCount += 1  ; Keep track of how many items are in the array.
    Array%ArrayCount% := A_LoopReadLine  ; Store this line in the next array element.
}

Numpad5::Gosub,Label1

Label1:
Random, num, 1, ArrayCount
element := Array%num%
Send, {Enter}
Send %element%
Send, {Enter}
return
