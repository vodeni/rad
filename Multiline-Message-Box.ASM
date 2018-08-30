; example of simplified Win32 programming using complex macro features 

include 'encoding\utf8.inc' 
include 'win32wx.inc' 

.data 

_str du '我是中国人', 0 
_str2 du 'hello world1!', 0Dh, 0Ah, 'hello world2!', 0Dh, 0Ah, 'hello world3!', 0Dh, 0Ah

.code 

start:
invoke MessageBox, HWND_DESKTOP, _str2, _str, MB_OK 
invoke ExitProcess, 0 

.end start 