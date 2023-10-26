@ECHO OFF

PROMPT `$e[1;32mv%@STRIP[".,",%_DOSVER] $e[0;32m%BOOTCONF $e[1;34m%@DOSMEM[K]K/%@XMS[M]M/%@EMS[M]M $e[1;31m%@DISKFREE[%@LEFT[2,%@CWD[]],M]M $e[1;30m$p$g$e[0;47;0m`

SET /R c:\etc\env.cfg
