;Made by Tp
;Modified by Le Mar. 2020
;ʹ��ǰ�������ͬһ��Ŀ¼�½�����url.txt���ĵ������ԡ�https://api.day.app/xxxxxxxxx/���ĸ�ʽ����������ճ����ȥ��
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