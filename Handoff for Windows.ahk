;Made by Tp
;Modified by Le Mar. 2020
;使用前请务必在同一个目录下建立「url.txt」文档，并以「https://api.day.app/xxxxxxxxx/」的格式将推送链接粘贴进去。
^!c::
FileRead, url, url.txt
cb = %clipboard%
If (InStr(cb,"http://") or InStr(cb,"HTTP://") or InStr(cb,"https://") or InStr(cb,"HTTPS://"))
{
    copy := "?url=%cb%"
	cb := "Incoming URL Link"
} else {
	copy := "?automaticallyCopy=1&url=%cb%&copy=%cb%"
}
finalURL = %url%%cb%%copy%
req := ComObjCreate("WinHttp.WinHttpRequest.5.1")
req.Open("POST", finalURL)
req.Send()