@ECHO OFF

IF %@INDEX[%BOOTCONF,E] != -1 GOTO EXPANDED
IF %@INDEX[%BOOTCONF,X] != -1 GOTO EXTENDED


:NORMAL
LH c:\drv\cdrom\nwcdex\v281\nwcdex.exe /D:OPTICAL /L:%CDROM% /M:10 /F:20
GOTO EOF

:EXTENDED
LH c:\drv\cdrom\nwcdex\v281clk\nwcdex.exe /D:OPTICAL /L:%CDROM% /M:30 /F:80
GOTO EOF

:EXPANDED
LH c:\drv\cdrom\nwcdex\v281clk\nwcdex.exe /D:OPTICAL /L:%CDROM% /M:30 /F:80 /E
GOTO EOF


:EOF
