@ECHO OFF

SET __path=%@LEFT[-1,%@PATH[%_batchname]]
SET __run=%__path\_run.bat


CALL %__path\bootconf.bat
CALL %__path\env.bat
CALL %__path\..\initdcfg.bat


CALL %__run autoexec pre

DO __i = 0 TO %@DEC[%@WORDS[%INITD]]
    CALL %__run %@WORD[%__i,%INITD] 
ENDDO

CALL %__run autoexec post


:PRE_EOF

UNSET /Q __path
UNSET /Q __run
UNSET /Q __i
UNSET /Q INITD


:EOF
