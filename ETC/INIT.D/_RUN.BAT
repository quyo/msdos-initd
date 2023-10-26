@ECHO OFF

IFF %# == 0 THEN 
    ECHO ERROR: too few parameters passed
    PAUSE
    GOTO EOF
ENDIFF

SET __option=%@IF[%# == 1,%[INITD_%[1]],%2&]
SET __options=%@WORDS[%__option]
UNSET /Q INITD_%[1]

SET __skip=N

DO __j = 0 TO %@DEC[%__options]
    
    SET __o=%[INITD_%[1]_%@WORD[%__j,%__option]]
    UNSET /Q INITD_%[1]_%@WORD[%__j,%__option]
    
    IFF "%__o" == "" THEN
        ECHO ERROR: missing setting INITD_%[1]_%@WORD[%__j,%__option]
        PAUSE
    ENDIFF

    :: ECHO INITD_%[1]_%@WORD[%__j,%__option]=%__o
    
    SET __choice=%@IF[%@INDEX[%__o,Y] != -1,Y,N]
    SET __prompt=%@IF[%@INDEX[%__o,P] != -1,Y,N]
    SET __space=%@IF[%@INDEX[%__o,S] != -1,Y,N]
    SET __continue=%@IF[%@INDEX[%__o,C] != -1,Y,N]
    
    IF "%__skip" == "Y" ITERATE
    IF "%__space" == "Y" ECHO.
    IF "%__prompt" == "Y" INKEY /C /K"YN" /W2 Run %[1]\%@WORD[%__j,%__option]? (Y/N)  %%__choice
    
    IFF "%__choice" == "Y" THEN
        CALL %__path\%[1]\%@WORD[%__j,%__option].bat
        SET __skip=%@IF[%__continue != Y,Y,N]
    ENDIFF

ENDDO


:PRE_EOF

UNSET /Q __option
UNSET /Q __options
UNSET /Q __j
UNSET /Q __o
UNSET /Q __choice
UNSET /Q __prompt
UNSET /Q __space
UNSET /Q __continue
UNSET /Q __skip


:EOF
