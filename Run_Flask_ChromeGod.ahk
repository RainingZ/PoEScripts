#MaxThreadsperHotKey 2
;#IfWinActive, ahk_class POEWindowClass

; Auto-run left click modification
LButton::
if (Run) {
	send, {LButton up}
	send, {LButton down}
} else {
	send, {LButton down}
}
return

LButton Up::
if (Run) {
	send, {LButton up}
	sleep 100
	send, {LButton down}
} else {
	send, {LButton up}
}
return

/*
; Insta skill / Flask before R skill
r::
if (Toggle) {
	send, A
}
Send {r down}
return

r up::
Send {r up}
return

; Unarmed weapon swap
x::
if (Toggle) {
	Send f
}
Send {x down}
Send {x up}
return

x up::
if (Toggle) {
	Send f
}
return
*/


; Kick myself
F4::
send, {Enter}{Ctrl Down}a{Ctrl Up}
send, /kick ChromeGod_Ritual
send, {Enter}
return

; Hideout
F5::
send, {Enter}{Ctrl Down}a{Ctrl Up}
send, /hideout
send, {Enter}
return

F6::
send, {Enter}{Ctrl Down}a{Ctrl Up}
send, /delve
send, {Enter}
return

F7::
send, {Enter}{Ctrl Down}a{Ctrl Up}
send, /menagerie
send, {Enter}
return

; Hold to spam control left click
XButton1::
SetTimer, CtrlLeft, 50
return

XButton1 up::
SetTimer, CtrlLeft, OFF
if (Run) {
	send, {LButton down}
}
return

*XButton1::
send, {Shift down}
SetTimer, ShiftLeft, 50
return

*XButton1 up::
SetTimer, ShiftLeft, OFF
send, {Shift up}
return

; Flask & Auto-run toggle
XButton2::
if (Toggle) {
	send, {LButton up}
}
Toggle := !Toggle
Run := Toggle ; Comment this to disable auto-run
if (Run) {
	;send, a
	send, {LButton down}
} else {
	send, {LButton up}
}

;SetTimer, Loop1, % (Toggle) ? 6000 : "Off"
SetTimer, Loop2, % (Toggle) ? 4000 : "Off"
SetTimer, Loop3, % (Toggle) ? 5400 : "Off"
SetTimer, Loop4, % (Toggle) ? 5000 : "Off"
SetTimer, Loop5, % (Toggle) ? 0 : "Off"
;SetTimer, Loop6, % (Toggle) ? 7000 : "Off"
;SetTimer, Loop7, % (Toggle) ? timer7 : "Off"
;SetTimer, Loop8, % (Toggle) ? timer8 : "Off"
;SetTimer, Loop9, % (Toggle) ? timer9 : "Off"
;SetTimer, Loop10, % (Toggle) ? 7000 : "Off"

return

;Vortex
Loop1:
{
		send, 1
}
return

Loop2:
{
		send, 2
}
return

;Atziri's Promise
Loop3:
{
		send, 3
}
return

;Silver/Rumi
Loop4:
{
		send, 4
}
return

;Quick Silver
Loop5:
{
		;if (Toggle) {
		;	send, 3
		;	sleep timer3
		;}
		;if (Toggle) {
		;	send, 4
		;	sleep 4000
		;}
		if (Toggle) {
			send, 5
			sleep 4000
		}
}
return

;Focus
Loop7:
{
		Send 7
}
return

;Immortal Call
Loop8:
{
		send, 8
}
return

;War Banner
Loop9:
{
		send, 9
}
return

;Blood Rage
Loop10:
{
		send, R
}
return

;Vaal Grace
Loop6:
{
		send, 6
}
return

CtrlLeft:
{
		send, z
		send, z
		send ^{Click}
}
return

ShiftLeft:
{
		send {Click}
}
return