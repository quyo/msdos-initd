@ECHO OFF

IF %@INDEX[%BOOTCONF%,E] != -1 GOTO EXPANDED
IF %@INDEX[%BOOTCONF%,X] != -1 GOTO EXTENDED


:NORMAL
c:\drv\config.sys\devload\v325\devload.com /H /DS /Q c:\drv\console\ansiplus\v407\ansiplus.exe
GOTO EOF

:EXTENDED
c:\drv\config.sys\devload\v325\devload.com /H /DS /Q c:\drv\console\ansiplus\v407\ansiplus.exe /H
GOTO EOF

:EXPANDED
c:\drv\config.sys\devload\v325\devload.com /H /DS /Q c:\drv\console\ansiplus\v407\ansiplus.exe /E
GOTO EOF


:EOF

