CLS
REM
ME:
CLS
COLOR 1, 0
PRINT "----------------Interstellar Game ----------------"
PRINT "Programmed by:Debayan Sutradhar in 2014"
PRINT "PRESS ANY KEY START THE GAME!!"
SLEEP
GOTO INS:
INS:
CLS
COLOR 2, 0
COLOR 2
PRINT "Screen:"
PRINT "Y  - YOU"
PRINT "E  - ENEMY"
PRINT "G  - Good (Capture that to win the game!)"
PRINT
PRINT "Keys:"
PRINT "W:Move up"
PRINT "D:Move right"
PRINT "A:Move left"
PRINT "S:Move down"
PRINT "NOTE:Capslock should not be enebled!"
PRINT "PRESS ANY KEY TO CONTINUE!"
SLEEP
GOTO GAME:
END
GAME:
COLOR 4, 2
RANDOMIZE TIMER
row = 12
column = 40
A$ = "Y"
E$ = "E"
G$ = "G"
ENEMYX = INT(RND * 20) + 1
ENEMYY = INT(RND * 30) + 1
DO
    DO
        keyed$ = INKEY$
    LOOP UNTIL keyed$ <> ""
    CLS
    GOODX = INT(RND * 14) + 1
    GOODY = INT(RND * 15) + 1
    IF keyed$ = "w" THEN row = row - 1
    IF keyed$ = "s" THEN row = row + 1
    IF keyed$ = "a" THEN column = column - 1
    IF keyed$ = "d" THEN column = column + 1
    LOCATE row, column
    PRINT A$
    LOCATE ENEMYX, ENEMYY
    PRINT E$
    LOCATE GOODX, GOODY
    PRINT G$
    IF row = ENEMYX AND column = ENEMYY THEN GOTO MAD:
    IF row = GOODX AND column = GOODY THEN GOTO NICE:
LOOP
MAD:
PRINT "You are dead"
SOUND 500, 3
SOUND 250, 3
SOUND 90, 3
PRINT "Press any key to exit!"
SLEEP
STOP
END
NICE:
PRINT "You won the GAME!!"
BEEP
BEEP
BEEP
PRINT "Press any key to exit!"
SLEEP
STOP
END


