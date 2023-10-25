@ECHO OFF

DEVICEHIGH c:\drv\mem\jemm\v578\jload.exe c:\drv\keyb\jkeybgr\v12\keybgr.dll
IF %? == 0 GOTO EOF

DEVICEHIGH c:\drv\keyb\keybgr\v103\keybgr.exe


:EOF
