;Startup
#Persistent
#SingleInstance
;#NoTrayIcon
SetWinDelay, 10
Coordmode, ToolTip, Screen
Coordmode, Mouse, Screen
Coordmode, Pixel, Screen
SetWorkingDir %A_ScriptDir%

left = 0
right = 0

!Printscreen::
Send {Printscreen}
return

!Pause::
Send {Pause}
return

Pause::
if left = 0
{Click down
left = 1
}
return

Pause Up::
Click up
left = 0
return

Printscreen::
if left = 1
{Click down right
right = 1
}
return

Printscreen Up::
Click up right
right = 0
return


