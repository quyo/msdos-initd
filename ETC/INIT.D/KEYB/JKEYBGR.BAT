@ECHO OFF

c:\drv\config.sys\devload\v325\devload.com /H /DS /Q c:\drv\mem\jemm\v578\jload.exe c:\drv\keyb\jkeybgr\v12\keybgr.dll
IF %? == 0 GOTO EOF

c:\drv\config.sys\devload\v325\devload.com /H /DS /Q c:\drv\keyb\keybgr\v103\keybgr.exe


:EOF
