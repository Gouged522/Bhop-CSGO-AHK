SetTimer, CheckGameQuit, 250		; if csgo.exe is not detected after 250ms, quit script
Return
CheckGameQuit:
Process,Exist,csgo.exe
If !ErrorLevel
ExitApp

*space::
Loop
{
GetKeyState,state,space,P
if state = U
break



Send,{space}
Sleep,20
}
return