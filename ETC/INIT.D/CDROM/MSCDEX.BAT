@ECHO OFF

IF %@INDEX[%BOOTCONF%,E] != -1 GOTO EXPANDED
IF %@INDEX[%BOOTCONF%,X] != -1 GOTO EXTENDED


:NORMAL
LH c:\drv\cdrom\mscdex\v225_710\mscdex.exe /D:OPTICAL /L:%CDROM% /M:10
GOTO EOF

:EXTENDED
LH c:\drv\cdrom\mscdex\v223clk\mscdex.exe /D:OPTICAL /L:%CDROM% /M:30
GOTO EOF

:EXPANDED
LH c:\drv\cdrom\mscdex\v223clk\mscdex.exe /D:OPTICAL /L:%CDROM% /M:30 /E
GOTO EOF


:EOF
