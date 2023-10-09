@ECHO OFF

IF %@READY[d:] != 1 GOTO EOF
IF NOT EXIST d:\nul GOTO EOF
IF NOT EXIST d:\autopre.bat GOTO EOF


CALL d:\autopre.bat


:EOF
