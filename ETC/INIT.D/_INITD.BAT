@ECHO OFF

SET __path=%@LEFT[-1,%@PATH[%_batchname]]
SET __run=%__path\_run.bat


CALL %__path\bootconf.bat
CALL %__path\env.bat
CALL %__path\..\initdcfg.bat


CALL %__run autoexec    pre

CALL %__run path
CALL %__run 4dos

CALL %__run keyb
CALL %__run ansi
CALL %__run cache
CALL %__run cdromsys
CALL %__run cdrom
CALL %__run mouse
CALL %__run sound
CALL %__run net

CALL %__run lfn
CALL %__run apm
CALL %__run dpmi
CALL %__run misc
CALL %__run eof

CALL %__run autoexec    post


:PRE_EOF

UNSET /Q __path
UNSET /Q __run


:EOF
