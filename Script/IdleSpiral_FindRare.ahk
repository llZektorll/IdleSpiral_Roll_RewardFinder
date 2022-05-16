F2:: ; Change this to any hotkey you prefer
Toggle := !Toggle
Loop {
PixelSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x0078EE, 60, Fast
If ErrorLevel {
Send {Left down} ; change "left to right if you want it to hold right
Sleep 30 ; edit this to how long you want to hold the button
Send {Left up} ; change "left to right if you want it to release right
}
else {
MouseMove, %X%, %y%, 1
Click, Right 
}
Sleep 1 ; Less sleep = do more often. More sleep = do less often. edit this to any value you prefer
If not Toggle 
	break
}
return

^esc:: ExitApp ; Change this to any hotkey you prefer
