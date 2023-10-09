@ECHO OFF

IF %@READY[d:] != 1 GOTO EOF
IF NOT EXIST d:\nul GOTO EOF
IF NOT EXIST d:\autopost.bat GOTO EOF


CALL d:\autopost.bat


:EOF
