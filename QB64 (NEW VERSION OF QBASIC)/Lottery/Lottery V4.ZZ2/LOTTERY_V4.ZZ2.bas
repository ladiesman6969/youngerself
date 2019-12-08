CLS
REM TO MAKE A LOTTERY V4.ZZ2
MENU:
CLS
RANDOMIZE TIMER
DO
    CLS
    A = (RND * 9) + 1
    COLOR A, A + 1
    PRINT "Welcome to lottery V4.ZZ2"
    PRINT "1>Start!"
    PRINT "2>Credits"
    PRINT "3>Exit"
    PRINT "Your choice :- 1 , 2 , 3,"
    SLEEP 1
    X$ = INKEY$
    SELECT CASE X$
        CASE "1"
            CLS
            GOTO GMENU:
        CASE "2"
            CLS
            GOTO CREDITS:
        CASE "3"
            CLS
            GOTO EX:
    END SELECT
LOOP
GMENU:
RANDOMIZE TIMER
B = (RND * 3) + 1
COLOR B + 1, B
PRINT "-Game menu-"
PRINT "1>That's my number"
PRINT "2>Go back to menu:"
PRINT "3>Exit"
DO
    Y$ = INKEY$
LOOP UNTIL Y$ = "1" OR Y$ = "2" OR Y$ = "3" OR Y$ = "4"
SELECT CASE Y$
    CASE "1"
        CLS
        GOTO TMN:
    CASE "2"
        CLS
        GOTO MENU:
    CASE "3"
        CLS
        GOTO EX:
END SELECT
CREDITS:
PRINT "-CREDITS-"
PRINT "Lead programmer : Debayan Sutradhar"
PRINT "Founder : Aditya Saha"
SLEEP 5
CLS
GOTO MENU:
EX:
PRINT "Do you want to QUIT :'( --(Y/N)--"
DO
    MAS$ = UCASE$(INKEY$)
LOOP UNTIL MAS$ = "Y" OR MAS$ = "N"
SELECT CASE MAS$
    CASE "Y"
        BEEP
        STOP
    CASE "N"
        CLS
        GOTO MENU:
END SELECT
TMN:
'Program code for THAT'S MY NUMBER (DIFFICULTY)
PRINT "-Difficulty-"
PRINT "1>Can I play daddy???"
PRINT "2>Don't hurt me!!!"
PRINT "3>Bring it on"
PRINT "4>I am death incarnate"
DO
    LL$ = INKEY$
LOOP UNTIL LL$ = "1" OR LL$ = "2" OR LL$ = "3" OR LL$ = "4"
IF LL$ = "1" THEN
    CV = INT(RND * 10) + 1
    CLS
    FOR I = 1 TO 3 STEP 1
        PRINT "Chances used ( "; I; " / 3 )"
        RANDOMIZE TIMER
        INPUT "I am thinking a no from 1 to 10 can you think of it ?????", GUESS1
        COMP1 = INT(RND * 10) + 1
        IF COMP1 > GUESS1 THEN
            PRINT "TOO LOW!!"
        ELSEIF COMP1 < GUESS1 THEN
            PRINT "TOO HIGH!!"
        ELSEIF COMP1 = GUESS1 THEN
            GOTO WIN1:
        END IF
    NEXT I
    PRINT "YOU LOSE!!!!!!!"
    PRINT "Best luck next time!!!!!!!"
    END
ELSEIF LL$ = "2" THEN
    CV = INT(RND * 50) + 1
    CLS
    FOR I = 1 TO 5 STEP 1
        PRINT "Chances used ( "; I; " / 5 )"
        RANDOMIZE TIMER
        INPUT "I am thinking a no from 1 to 50 can you think of it ??? ", GUESS2
        COMP2 = (RND * 50) + 1
        IF COMP2 > GUESS2 THEN
            PRINT "TOO LOW!!"
        ELSEIF COMP2 < GUESS2 THEN
            PRINT "TOO HIGH!!"
        ELSEIF COMP2 = GUESS2 THEN
            GOTO WIN1:
        END IF
    NEXT I
    PRINT "YOU LOSE!!!"
    PRINT "GOOD LUCK NEXT TIME!!"
    END
ELSEIF LL$ = "3" THEN
    CV = INT(RND * 100) + 1
    CLS
    FOR I = 1 TO 5 STEP 1
        PRINT "Chances used ( "; I; " / 5 )"
        RANDOMIZE TIMER
        INPUT "I am thinking a no from 1 to 100 can you think of it ??? ", GUESS2
        COMP2 = (RND * 50) + 1
        IF COMP2 > GUESS2 THEN
            PRINT "TOO LOW!!"
        ELSEIF COMP2 < GUESS2 THEN
            PRINT "TOO HIGH!!"
        ELSEIF COMP2 = GUESS2 THEN
            GOTO WIN1:
        END IF
    NEXT I
    PRINT "YOU LOSE!!!"
    PRINT "GOOD LUCK NEXT TIME!!"
    END
ELSEIF LL$ = "4" THEN
    CV = INT(RND * 1000) + 1
    CLS
    PRINT "Chances used ( 1 / 1 )"
    RANDOMIZE TIMER
    INPUT "I am thinking a no from 1 to 1000 can you think of it ??? ", GUESS2
    COMP2 = INT(RND * 50) + 1
    IF COMP2 > GUESS2 THEN
        PRINT "TOO LOW!!"
        GOTO DEAD:
    ELSEIF COMP2 < GUESS2 THEN
        PRINT "TOO HIGH!!"
        GOTO DEAD:
    ELSEIF COMP2 = GUESS2 THEN
        GOTO WIN1:
    END IF
END IF
WIN1:
FOR OPA = 100 TO 900 STEP 100
    SOUND OPA, 1
NEXT OPA
PRINT "----------YOU WON----------"
PRINT "YOU ARE THE WINNNER !! YOU WON 1,00,00,00 "
PRINT "'Y' FOR PLAYING AGAIN!"
PRINT "'N' FOR EXITING"
DO
    X$ = UCASE$(INKEY$)
LOOP UNTIL X$ = "Y" OR X$ = "N"
SELECT CASE X$
    CASE "Y"
        CLS
        GOTO MENU:
    CASE "N"
        CLS
        GOTO EX:
END SELECT
DEAD:
FOR OPS = 900 TO 100 STEP -100
    SOUND OPS, 1
NEXT OPS
PRINT "----YOU ARE DEAD!!!!!----"
PRINT "YOU ARE FINED 100000000"
END









