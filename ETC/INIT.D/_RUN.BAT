@ECHO OFF

IFF %# LT 2 THEN 
    ECHO ERROR: too few parameters passed
    PAUSE
    GOTO EOF
ENDIFF


SET __skip=N

DO __i = 2 TO %#
    UNSET /Q __prompt
    UNSET /Q __choice
    UNSET /Q __space
    
    SWITCH "%[INITD_%[1]_%[%__i]]"
    CASE "Y"
        SET __choice=Y    
    CASE "YS"
        SET __choice=Y    
        SET __space=Y
    CASE "N"
        SET __choice=N    
    CASE "PY"
        SET __prompt=Y
        SET __choice=Y
        SET __space=Y
    CASE "PN"
        SET __prompt=Y
        SET __choice=N
        SET __space=Y
    DEFAULT
        ECHO ERROR: missing or unknown setting INITD_%[1]_%[%__i]=%[INITD_%[1]_%[%__i]]
        PAUSE
    ENDSWITCH
    UNSET /Q INITD_%[1]_%[%__i]
    
    IF "%__skip" == "Y" ITERATE
    IF "%__space" == "Y" ECHO.
    IF "%__prompt" == "Y" INKEY /C /K"YN" /W2 Run %[1]\%[%__i]? (Y/N)  %%__choice
    
    IFF "%__choice" == "Y" THEN
        CALL %__path\%[1]\%[%__i].bat
        SET __skip=Y
    ENDIFF
ENDDO


:PRE_EOF

UNSET /Q __i
UNSET /Q __prompt
UNSET /Q __choice
UNSET /Q __space
UNSET /Q __skip


:EOF
