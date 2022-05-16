~F2:: ; Change this to any hotkey you prefer
Toggle := !Toggle
Loop {
PixelSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x0078EE, 60, Fast
if (ErrorLevel = 0)
{
    break
}
else {
Send, {Space}
Sleep, 50
}
; if you are looking for a uncommon reward remove the ; from the line below until the "return"
;PixelSearch, X, Y, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFFFF00, 60, Fast
;if (ErrorLevel = 0)
;{
;    break
;}
;else {
;Send, {Space}
;Sleep, 50
;}

}
return

^esc:: ExitApp ; Change this to any hotkey you prefer
