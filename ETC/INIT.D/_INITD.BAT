@ECHO OFF

SET __path=%@LEFT[-1,%@PATH[%_batchname]]
SET __run=%__path\_run.bat


CALL %__path\bootconf.bat
CALL %__path\env.bat
CALL %__path\..\initdcfg.bat


CALL %__run autoexec    pre

CALL %__run path        hx
CALL %__run path        dos4g
CALL %__run path        dos32a
CALL %__run path        cwsdpmi
CALL %__run path        bcpp
CALL %__run path        bp
CALL %__run path        fpc
CALL %__run path        djgpp
CALL %__run path        freedos
CALL %__run path        bat

CALL %__run 4dos        aliases

CALL %__run keyb        jkeybgr keybgr mkeyb fdkeyb xkeyb
CALL %__run ansi        nansi ansiplus
CALL %__run cache       xhdd
CALL %__run cdromsys    emptycd
CALL %__run cdromsys    xdvd2 udvd2 videcdd
CALL %__run cdrom       shsucdx mscdex nwcdex
CALL %__run mouse       cute_v21 cute_v20 cute_v19 logitech
CALL %__run sound       unisound

CALL %__run lfn         doslfn

CALL %__run apm         fdapm

CALL %__run dpmi        hdpmi16 hdpmi16i
CALL %__run dpmi        hdpmi32 hdpmi32i
CALL %__run dpmi        hxldr32

CALL %__run misc        kstack
CALL %__run misc        misterfs
CALL %__run misc        q87

CALL %__run eof         qmt
CALL %__run eof         mem

CALL %__run autoexec    post


:PRE_EOF

UNSET /Q __path
UNSET /Q __run


:EOF
