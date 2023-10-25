@ECHO OFF

IF %@INDEX[%BOOTCONF,E] != -1 GOTO EXPANDED
IF %@INDEX[%BOOTCONF,X] != -1 GOTO EXTENDED


:NORMAL
DEVICEHIGH c:\drv\console\ansiplus\v407\ansiplus.exe
GOTO EOF

:EXTENDED
DEVICEHIGH c:\drv\console\ansiplus\v407\ansiplus.exe /H
GOTO EOF

:EXPANDED
DEVICEHIGH c:\drv\console\ansiplus\v407\ansiplus.exe /E
GOTO EOF


:EOF

