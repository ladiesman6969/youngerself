CLS
DIM HO(2) AS STRING
DIM T(1) AS STRING
REM
ME:
CLS
DO
    FOR XX = 1 TO 10 STEP 1
        COLOR XX, 0
        CLS
        PRINT "----------------Interstellar Game ---------V 1.8(Customized)"
        PRINT "Programmed by:Debayan Sutradhar in 2015"
        PRINT "PRESS THE SPACE KEY START THE GAME!!"
        C67$ = UCASE$(INKEY$)
        SELECT CASE C67$
            CASE CHR$(32)
                GOTO MAINMENU:
        END SELECT
        SLEEP 0.6
    NEXT XX
LOOP
MAINMENU:
CLS
DO
    FOR M1M = 1 TO 10 STEP 1
        CLS
        COLOR 5, 0
        PRINT "--Main Menu--"
        PRINT "1)The main story!!"
        PRINT "2)ROCK AND ROLL AND START THE GAME!!"
        PRINT "3)EXIT"
        PRINT "4)about me!!"
        DO
            HODJA$ = INKEY$
        LOOP UNTIL HODJA$ <> ""
        SELECT CASE HODJA$
            CASE "1"
                GOTO STORY:
            CASE "2"
                GOTO LEVELS
            CASE "3"
                GOTO GETOUT:
            CASE "4"
                GOTO ABOUTME:
        END SELECT
    NEXT M1M
LOOP
LEVELS:
CLS
DO
    FOR XX2 = 1 TO 10
        CLS
        COLOR XX2, 0
        CLS
        LOCATE 5, 30
        PRINT "--LEVELS--"
        PRINT "1)Level 1"
        PRINT "2)Level 2"
        PRINT "3)Level 3 (The final level!)"
        TX$ = UCASE$(INKEY$)
        SELECT CASE TX$
            CASE "1"
                GOTO INS:
            CASE "2"
                GOTO INS:
            CASE "3"
                GOTO INS:
        END SELECT
        SLEEP 0.6
    NEXT XX2
LOOP
INS:
STORY:
PRINT "You name is Adam Jensen ,the best soldier considered in the U.S army"
PRINT "But you are trapped in Mahajora's maze . So you have to get rid of"
PRINT "the maze! There are three levels - two are simple and three is"
PRINT "hardest ! Best of luck!"
PRINT "--INTERSTELLAR VERSION 1.9--"
PRINT "   will be released from DEB SOFTAWARE"
PRINT "            in 30 MARCH 2015"
PRINT "WARNING: THE PROGRAM SHOULD NOT BE PIRATED"
PRINT "WARNING:V1.8 AND V1.8(CUSTOMIZED)"
SLEEP 30
IF HODJA$ = "1" THEN GOTO MAINMENU:
CLS
COLOR 2, 0
COLOR 2
PRINT "Screen:"
PRINT "Y  - YOU"
PRINT "E  - ENEMY,M - MAHAJORA! Avoid it in LEVEL 3"
PRINT "G  - Good (Capture that to win the game!)"
PRINT
PRINT "Keys:"
PRINT "W:Move up"
PRINT "D:Move right"
PRINT "A:Move left"
PRINT "S:Move down"
PRINT "NOTE:Capslock should not be enabled!"
PRINT "NOTE:Your row and coloumn will be shown in the screen!"
PRINT "NOTE:If your row or coloumn is less than 1 then you will be dead!"
PRINT "PRESS ANY KEY TO CONTINUE!"
SLEEP 10
IF TX$ = "1" THEN
    GOTO LEVEL1:
ELSEIF TX$ = "2" THEN
    GOTO LEVEL2:
ELSEIF TX$ = "3" THEN
    GOTO LEVEL3:
END IF
END
LEVEL1:
COLOR 4, 2
RANDOMIZE TIMER
row = 12
column = 40
a$ = "Y"
E$ = "E"
G$ = "G"
GOODX = INT(RND * 23) + 3
GOODY = INT(RND * 70) + 1
ENEMYX = INT(RND * 23) + 3
ENEMYY = INT(RND * 60) + 1
DO
    DO
        KEYED$ = UCASE$(INKEY$)
    LOOP UNTIL KEYED$ <> ""
    CLS
    GOODXSELECTER = INT(RND * 2) + 0
    GOODYSELECTER = INT(RND * 2) + 0
    ENEMYXSELECTER = INT(RND * 2) + 0
    ENEMYYSELECTER = INT(RND * 2) + 0
    IF GOODXSELECTER = 1 THEN
        GOODX = GOODX - 1
    ELSEIF GOODXSELECTER = 2 THEN
        GOODX = GOODX + 1
    ELSEIF GOODXSELECTER = 0 THEN
        GOODX = GOODX
    END IF
    IF GOODYSELECTER = 1 THEN
        GOODY = GOODY + 1
    ELSEIF GOODYSELECTER = 2 THEN
        GOODY = GOODY - 1
    ELSEIF GOODYSELECTER = 0 THEN
        GOODY = GOODY
    END IF
    IF ENEMYXSELECTER = 1 THEN
        ENEMYX = ENEMYX - 1
    ELSEIF ENEMYXSELECTER = 2 THEN
        ENEMYX = ENEMYX + 1
    ELSEIF ENEMYXSELECTER = 0 THEN
        ENEMYX = ENEMYX
    END IF
    IF ENEMYYSELECTER = 1 THEN
        ENEMYY = ENEMYY + 1
    ELSEIF ENEMYYSELECTER = 2 THEN
        ENEMYY = ENEMYY - 1
    ELSEIF ENEMYYSELECTER = 0 THEN
        ENEMYY = ENEMYY
    END IF
    IF KEYED$ = "W" THEN row = row - 1
    IF KEYED$ = "S" THEN row = row + 1
    IF KEYED$ = "A" THEN column = column - 1
    IF KEYED$ = "D" THEN column = column + 1
    IF column < 1 OR column > 80 THEN GOTO MAD:
    IF row < 3 OR row > 23 THEN GOTO MAD:
    IF KEYED$ = "E" THEN STOP
    IF GOODX < 3 OR GOODX > 23 THEN
        GOODX = INT(RND * 23) + 3
    END IF
    IF GOODY > 80 THEN
        GOODY = INT(RND * 80) + 1
    END IF

    IF ENEMYX < 3 OR ENEMYX > 23 THEN
        ENEMYX = INT(RND * 20) + 3
    END IF
    IF ENEMYY > 80 THEN
        ENEMYY = INT(RND * 80) + 1
    END IF
    IF row < 3 THEN
        row = INT(RND * 20) + 3
    END IF
    LOCATE 1, 1
    PRINT "You:"
    LOCATE 1, 40
    PRINT "Your destination:"
    LOCATE 2, 1
    PRINT "ROW NO:"; row; "COLOUMN NO:"; column
    LOCATE 2, 40
    PRINT "ROW NO:"; GOODX; "COLOUMN NO:"; GOODY
    LOCATE row, column
    PRINT a$
    LOCATE ENEMYX, ENEMYY
    PRINT E$
    LOCATE GOODX, GOODY
    PRINT G$
    IF row = ENEMYX AND column = ENEMYY THEN GOTO MAD:
    IF row = GOODX AND column = GOODY THEN GOTO NICE:
LOOP
MAD:
PRINT "You are dead"
FOR A = 900 TO 0 STEP -100
    SOUND A, 3
NEXT
PRINT "Press 'Y' for playing the game again!!"
PRINT "Press 'N' for closing the game!!"
DO
    HO(1) = UCASE$(INKEY$)
LOOP WHILE HO(1) = ""
SELECT CASE HO(1)
    CASE "Y"
        GOTO LEVELS:
    CASE "N"
        STOP
END SELECT
END
NICE:
PRINT "You won the GAME!!"
FOR S = 0 TO 900 STEP 100
    SOUND S, 3
NEXT
PRINT "Press 'Y' for playing the game again!!"
PRINT "Press 'N' for closing the game!!"
DO
    HO(2) = UCASE$(INKEY$)
LOOP WHILE HO(2) = ""
SELECT CASE HO(2)
    CASE "Y"
        GOTO LEVELS:
    CASE "N"
        STOP
END SELECT
END
LEVEL2:
COLOR 4, 2
RANDOMIZE TIMER
row = 12
column = 40
a$ = "Y"
E$ = "E"
G$ = "G"
GOODX = INT(RND * 23) + 3
GOODY = INT(RND * 70) + 1
ENEMYX = INT(RND * 23) + 3
ENEMYY = INT(RND * 60) + 1
DO
    DO
        KEYED$ = UCASE$(INKEY$)
    LOOP UNTIL KEYED$ <> ""
    CLS
    GOODXSELECTER = INT(RND * 2) + 0
    GOODYSELECTER = INT(RND * 2) + 0
    ENEMYXSELECTER = INT(RND * 2) + 0
    ENEMYYSELECTER = INT(RND * 2) + 0
    IF GOODXSELECTER = 1 THEN
        GOODX = GOODX - 1
    ELSEIF GOODXSELECTER = 2 THEN
        GOODX = GOODX + 1
    ELSEIF GOODXSELECTER = 0 THEN
        GOODX = GOODX
    END IF
    IF GOODYSELECTER = 1 THEN
        GOODY = GOODY + 1
    ELSEIF GOODYSELECTER = 2 THEN
        GOODY = GOODY - 1
    ELSEIF GOODYSELECTER = 0 THEN
        GOODY = GOODY
    END IF
    IF ENEMYXSELECTER = 1 THEN
        ENEMYX = ENEMYX - 1
    ELSEIF ENEMYXSELECTER = 2 THEN
        ENEMYX = ENEMYX + 1
    ELSEIF ENEMYXSELECTER = 0 THEN
        ENEMYX = ENEMYX
    END IF
    IF ENEMYYSELECTER = 1 THEN
        ENEMYY = ENEMYY + 1
    ELSEIF ENEMYYSELECTER = 2 THEN
        ENEMYY = ENEMYY - 1
    ELSEIF ENEMYYSELECTER = 0 THEN
        ENEMYY = ENEMYY
    END IF
    IF KEYED$ = "W" THEN row = row - 1
    IF KEYED$ = "S" THEN row = row + 1
    IF KEYED$ = "A" THEN column = column - 1
    IF KEYED$ = "D" THEN column = column + 1
    IF column < 1 OR column > 80 THEN GOTO MA:
    IF row < 3 OR row > 23 THEN GOTO MA:
    IF KEYED$ = "E" THEN STOP
    IF GOODX < 3 OR GOODX > 23 THEN
        GOODX = INT(RND * 23) + 3
    END IF
    IF GOODY > 80 THEN
        GOODY = INT(RND * 80) + 1
    END IF

    IF ENEMYX < 3 OR ENEMYX > 23 THEN
        ENEMYX = INT(RND * 20) + 3
    END IF
    IF ENEMYY > 80 THEN
        ENEMYY = INT(RND * 80) + 1
    END IF
    IF row < 3 THEN
        row = INT(RND * 20) + 3
    END IF
    LOCATE 1, 40
    PRINT "Your destination:"
    LOCATE 2, 40
    PRINT "ROW NO:"; GOODX; "COLOUMN NO:"; GOODY
    LOCATE row, column
    PRINT a$
    LOCATE ENEMYX, ENEMYY
    PRINT E$
    LOCATE GOODX, GOODY
    PRINT G$
    IF row = ENEMYX AND column = ENEMYY THEN GOTO MAD:
    IF row = GOODX AND column = GOODY THEN GOTO NICE:
LOOP
MA:
PRINT "You are dead"
FOR A = 900 TO 0 STEP -100
    SOUND A, 3
NEXT
PRINT "Press 'Y' for playing the game again!!"
PRINT "Press 'N' for closing the game!!"
DO
    HO(1) = UCASE$(INKEY$)
LOOP WHILE HO(1) = ""
SELECT CASE HO(1)
    CASE "Y"
        GOTO LEVELS:
    CASE "N"
        STOP
END SELECT
END
NIC:
PRINT "You won the GAME!!"
FOR S = 0 TO 900 STEP 100
    SOUND S, 3
NEXT
PRINT "Press 'Y' for playing the game again!!"
PRINT "Press 'N' for closing the game!!"
DO
    HO(2) = UCASE$(INKEY$)
LOOP WHILE HO(2) = ""
SELECT CASE HO(2)
    CASE "Y"
        GOTO LEVELS:
    CASE "N"
        STOP
END SELECT
END
LEVEL3:
COLOR 4, 2
RANDOMIZE TIMER
row = 12
column = 40
a$ = "Y"
E$ = "M"
TURNS = INT(RND * 500) + 100
DO
    DO
        KEYED$ = UCASE$(INKEY$)
    LOOP UNTIL KEYED$ <> ""
    CLS
    TURNS = TURNS - 1
    ENEMYX = INT(RND * 23) + 3
    ENEMYY = INT(RND * 60) + 1
    IF KEYED$ = "W" THEN row = row - 1
    IF KEYED$ = "S" THEN row = row + 1
    IF KEYED$ = "A" THEN column = column - 1
    IF KEYED$ = "D" THEN column = column + 1
    IF column < 1 OR column > 80 THEN GOTO M:
    IF row < 3 OR row > 23 THEN GOTO M:
    IF KEYED$ = "E" THEN STOP
    IF GOODX < 3 OR GOODX > 23 THEN
        GOODX = INT(RND * 23) + 3
    END IF
    IF GOODY > 80 THEN
        GOODY = INT(RND * 80) + 1
    END IF

    IF ENEMYX < 3 OR ENEMYX > 23 THEN
        ENEMYX = INT(RND * 20) + 3
    END IF
    IF ENEMYY > 80 THEN
        ENEMYY = INT(RND * 80) + 1
    END IF
    IF row < 3 THEN
        row = INT(RND * 20) + 3
    END IF
    LOCATE row, column
    PRINT a$
    LOCATE ENEMYX, ENEMYY
    PRINT E$
    LOCATE 1, 1
    PRINT "Turns left:"; TURNS
    LOCATE 1, 30
    PRINT "MAHAJORA'S ROW:"; ENEMYX
    LOCATE 2, 30
    PRINT "MAHAJORA'S COLOUMN:"; ENEMYY
    IF TURNS < 1 THEN GOTO N:
    IF row = ENEMYX AND column = ENEMYY THEN GOTO M:
LOOP
M:
PRINT "You failed to save the princess!!"
FOR A = 900 TO 0 STEP -100
    SOUND A, 3
NEXT
PRINT "Press 'N' for closing the game!!"
DO
    HO(1) = UCASE$(INKEY$)
LOOP WHILE HO(1) = ""
SELECT CASE HO(1)
    CASE "N"
        STOP
END SELECT
END
N:
PRINT "You won the GAME!!"
FOR S = 0 TO 900 STEP 100
    SOUND S, 3
NEXT
PRINT "Press 'Y' for playing the game again!!"
PRINT "Press 'N' for closing the game!!"
DO
    HO(2) = UCASE$(INKEY$)
LOOP WHILE HO(2) = ""
SELECT CASE HO(2)
    CASE "Y"
        GOTO LEVELS:
    CASE "N"
        STOP
END SELECT
END
GETOUT:
LOCATE 20, 20
DO
    CLS
    PRINT "Enter '' for cowardness and worry"
    PRINT "Enter 'B' for work and glory"
    DO
        SHAMPA$ = UCASE$(INKEY$)
    LOOP UNTIL SHAMPA$ <> ""
    SELECT CASE SHAMPA$
        CASE ""
            STOP
        CASE "B"
            GOTO MAINMENU:
    END SELECT
LOOP
ABOUTME:
CLS
PRINT "Programmed by Debayan Sutradhar in December 2014"
PRINT "Current Version 1.8(Customized)"
PRINT "NOT FOR SALE"
PRINT "PROGRAM NOT RELEASED IN MARKET CURRENTLY!"
SLEEP 30
GOTO MAINMENU:
END















