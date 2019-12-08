CLS
SETTINGUP:
DO
    FOR A = 1 TO 10 STEP 1
        CLS
        COLOR A, 0
        PRINT "Welcome to TIC TAC TOE!"
        PRINT "Programmed by:-Debayan Sutradhar"
        PRINT "PRESS          THE           SPACE          KEY    !!"
        SLEEP 1
        B$ = UCASE$(INKEY$)
        IF B$ = CHR$(32) THEN
            GOTO INSTRUCTIONS:
        END IF
    NEXT
LOOP
INSTRUCTIONS:
VDES:
DO
    FOR OKLOPP34 = 1 TO 1
        CLS
        SLEEP 1
        LOCATE 50, 50
        PRINT "VERSION 1.1"
        CLS
    NEXT
SLEEP 1
    COUNTERLOOPER = COUNTERLOOPER + 1
LOOP UNTIL COUNTERLOOPER = 10
SCREEN 1
PSET (3, 10)
DRAW "d170;r170;u170;l170;d56.5;r170;d56.5;l170;d56.5;r56.5;u170;r56.5;d170;r56.5;u170"
X1:
PSET (10, 56)
DRAW "E30;G15;H15;F30;H15"
X2:
PSET (10, 56 + 56)
DRAW "E30;G15;H15;F30;H15"
X3:
PSET (10, 56 + 56 + 56)
DRAW "E30;G15;H15;F30;H15"
X4:
PSET (65, 56)
DRAW "E30;G15;H15;F30;H15"
X5:
PSET (65, 56 + 56)
DRAW "E30;G15;H15;F30;H15"
X6:
PSET (65, 56 + 56 + 56)
DRAW "E30;G15;H15;F30;H15"
X7:
PSET (120, 56)
DRAW "E30;G15;H15;F30;H15"
X8:
PSET (120, 56 + 56)
DRAW "E30;G15;H15;F30;H15"
X9:
PSET (120, 56 + 56 + 56)
DRAW "E30;G15;H15;F30;H15"
PRINT "'X' KEYS.............."
SLEEP 5
CLS
PRINT "'Y' KEYS.............."
CUBE:
PSET (3, 10)
DRAW "d170;r170;u170;l170;d56.5;r170;d56.5;l170;d56.5;r56.5;u170;r56.5;d170;r56.5;u170"
Y1:
CIRCLE (25, 40), 20, 1
Y2:
CIRCLE (25, 40 + 55), 20, 1
Y3:
CIRCLE (25, 40 + 55 + 55), 20, 1
Y4:
CIRCLE (85, 40), 20, 1
Y5:
CIRCLE (85, 40 + 55), 20, 1
Y6:
CIRCLE (85, 40 + 55 + 55), 20, 1
Y7:
CIRCLE (85 + 55, 40), 20, 1
Y8:
CIRCLE (85 + 55, 40 + 55), 20, 1
Y9:
CIRCLE (85 + 55, 40 + 55 + 55), 20, 1
SLEEP 5
GOTO LEVELS:
END
LEVELS:
CLS
SCREEN 0
DO
    FOR I = 1 TO 10 STEP 1
        CLS
        COLOR I, 0
        PRINT "-Levels-"
        PRINT "1)HUMAN 1 VS HUMAN 2"
        SLEEP 1
        LE$ = UCASE$(INKEY$)
        IF LE$ = "1" THEN
            GOTO GAMESETUP:
        END IF
    NEXT I
LOOP
GAMESETUP:
NAMECONSOLE:
INPUT "Enter P1's name : ", P1$
INPUT "Enter P2's name : ", P2$
DO
    CLS
    INPUT "ENTER P1'S CHOICE(X OR O) : ", P1C$
LOOP UNTIL P1C$ = "X" OR P1C$ = "x" OR P1C$ = "O" OR P1C$ = "o"
IF P1C$ = "X" OR P1C$ = "x" THEN
    P2C$ = "O"
ELSEIF P1C$ = "O" OR P1C$ = "o" THEN
    P2C$ = "X"
END IF
SETTERUP:
CLS
DO
    FOR OPLIIOP = 1 TO 1
        CLS
        SLEEP 1
        PRINT "So "; P1C$; " are you ready to fight with "; P2$; "????"
        CLS
    NEXT
    PRINT "IF so then ENTER 'Y' OR ENTER 'N'(P1 AND P2)"
    P1AGREE$ = UCASE$(INKEY$)
    IF P1AGREE$ = "Y" THEN
        GOTO YA:
    ELSEIF P1AGREE$ = "N" THEN
        STOP
    END IF
    SLEEP 1
LOOP
YA:
CLS
DO

    SCREEN 1
    PSET (3, 10)
    DRAW "d170;r170;u170;l170;d56.5;r170;d56.5;l170;d56.5;r56.5;u170;r56.5;d170;r56.5;u170"
    SELECT CASE P1C$
        CASE "X", "x"
            GOTO P1X:
        CASE "O", "o"
            GOTO P1Y:
    END SELECT
    P1X:
    IF X1 = 1 AND X5 = 1 AND X9 = 1 THEN GOTO P1WIN:
    IF X3 = 1 AND X5 = 1 AND X7 = 1 THEN GOTO P1WIN:
    IF X4 = 1 AND X5 = 1 AND X6 = 1 THEN GOTO P1WIN:
    IF X1 = 1 AND X2 = 1 AND X3 = 1 THEN GOTO P1WIN:
    IF X4 = 1 AND X5 = 1 AND X6 = 1 THEN GOTO P1WIN:
    IF X7 = 1 AND X8 = 1 AND X9 = 1 THEN GOTO P1WIN:
    IF X1 = 1 AND X4 = 1 AND X7 = 1 THEN GOTO P1WIN:
    IF X2 = 1 AND X5 = 1 AND X8 = 1 THEN GOTO P1WIN:
    IF X3 = 1 AND X6 = 1 AND X9 = 1 THEN GOTO P1WIN:
    INPUT "", P1XC
    SELECT CASE P1XC
        CASE 1
            PSET (10, 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X1 = 1
            X1 = 1
        CASE 2
            PSET (10, 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X2 = 1
            X2 = 1
        CASE 3
            PSET (10, 56 + 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X3 = 1
            X3 = 1
        CASE 4
            PSET (65, 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X4 = 1
            X4 = 1
        CASE 5
            PSET (65, 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X5 = 1
            X5 = 1
        CASE 6
            PSET (65, 56 + 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X6 = 1
            X6 = 1
        CASE 7
            PSET (120, 56)
            DRAW "E30;G15;H15;F30;H15"
            PIX7 = 1
            X7 = 1
        CASE 8
            PSET (120, 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            X8 = 1
            P1X8 = 1
        CASE 9
            PSET (120, 56 + 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P1X9 = 1
            X9 = 1
        CASE ELSE
            PRINT "NOT VALID,RESTART THE GAME!!"
            END
    END SELECT
    GOTO P2S:
    P1Y:
    IF Y1 = 1 AND Y5 = 1 AND Y9 = 1 THEN GOTO P1WIN:
    IF Y3 = 1 AND Y5 = 1 AND Y7 = 1 THEN GOTO P1WIN:
    IF Y4 = 1 AND Y5 = 1 AND Y6 = 1 THEN GOTO P1WIN:
    IF Y1 = 1 AND Y2 = 1 AND Y3 = 1 THEN GOTO P1WIN:
    IF Y4 = 1 AND Y5 = 1 AND Y6 = 1 THEN GOTO P1WIN:
    IF Y7 = 1 AND Y8 = 1 AND Y9 = 1 THEN GOTO P1WIN:
    IF Y1 = 1 AND Y4 = 1 AND Y7 = 1 THEN GOTO P1WIN:
    IF Y2 = 1 AND Y5 = 1 AND Y8 = 1 THEN GOTO P1WIN:
    IF Y3 = 1 AND Y6 = 1 AND Y9 = 1 THEN GOTO P1WIN:
    INPUT "", P1YC
    SELECT CASE P1YC
        CASE 1
            CIRCLE (25, 40), 20, 1
            P1Y1 = 1
            Y1 = 1
        CASE 2
            CIRCLE (25, 40 + 55), 20, 1
            P1Y2 = 1
            Y2 = 1
        CASE 3
            CIRCLE (25, 40 + 55 + 55), 20, 1
            P1Y3 = 1
            Y3 = 1
        CASE 4
            CIRCLE (85, 40), 20, 1
            P1Y4 = 1
            Y4 = 1
        CASE 5
            CIRCLE (85, 40 + 55), 20, 1
            P1Y5 = 1
            Y5 = 1
        CASE 6
            CIRCLE (85, 40 + 55 + 55), 20, 1
            P1Y6 = 1
            Y6 = 1
        CASE 7
            CIRCLE (85 + 60, 40), 20, 1
            P1Y7 = 1
            Y7 = 1
        CASE 8
            CIRCLE (85, 40 + 55), 20, 1
            P1Y8 = 1
            Y8 = 1
        CASE 9
            CIRCLE (85, 40 + 55 + 55), 20, 1
            P1Y9 = 1
            Y9 = 1
        CASE ELSE
            PRINT "NOT A AVALID NO,RESTART THE GAME"
            END
    END SELECT
    P2S:
    SELECT CASE P2C$
        CASE "X", "x"
            GOTO P2X:
        CASE "O", "o"
            GOTO P2Y:
    END SELECT
    P2X:
    IF XX1 = 1 AND XX5 = 1 AND XX9 = 1 THEN GOTO P2WIN:
    IF XX3 = 1 AND XX5 = 1 AND XX7 = 1 THEN GOTO P2WIN:
    IF XX4 = 1 AND XX5 = 1 AND XX6 = 1 THEN GOTO P2WIN:
    IF XX1 = 1 AND XX2 = 1 AND XX3 = 1 THEN GOTO P2WIN:
    IF XX4 = 1 AND XX5 = 1 AND XX6 = 1 THEN GOTO P2WIN:
    IF XX7 = 1 AND XX8 = 1 AND XX9 = 1 THEN GOTO P2WIN:
    IF XX1 = 1 AND XX4 = 1 AND XX7 = 1 THEN GOTO P2WIN:
    IF XX2 = 1 AND XX5 = 1 AND XX8 = 1 THEN GOTO P2WIN:
    IF XX3 = 1 AND XX6 = 1 AND XX9 = 1 THEN GOTO P2WIN:
    INPUT "", P2XC
    SELECT CASE P2XC
        CASE 1
            PSET (10, 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X1 = 1
            XX1 = 1
        CASE 2
            PSET (10, 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X2 = 1
            XX2 = 1
        CASE 3
            PSET (10, 56 + 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X3 = 1
            XX3 = 1
        CASE 4
            PSET (65, 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X4 = 1
            XX4 = 1
        CASE 5
            PSET (65, 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X5 = 1
            XX5 = 1
        CASE 6
            PSET (65, 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X6 = 1
            XX6 = 1
        CASE 7
            PSET (120, 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X7 = 1
            XX7 = 1
        CASE 8
            PSET (120, 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            XX8 = 1
            P2X8 = 1
        CASE 9
            PSET (120, 56 + 56 + 56)
            DRAW "E30;G15;H15;F30;H15"
            P2X9 = 1
            XX9 = 1
        CASE ELSE
            PRINT "NOT VALID,RESTART THE GAME!!"
            END
    END SELECT
    GOTO P1Y:
    END
    P2Y:
    IF YY1 = 1 AND YY5 = 1 AND YY9 = 1 THEN GOTO P2WIN:
    IF YY3 = 1 AND YY5 = 1 AND YY7 = 1 THEN GOTO P2WIN:
    IF YY4 = 1 AND YY5 = 1 AND YY6 = 1 THEN GOTO P2WIN:
    IF YY1 = 1 AND YY2 = 1 AND YY3 = 1 THEN GOTO P2WIN:
    IF YY4 = 1 AND YY5 = 1 AND YY6 = 1 THEN GOTO P2WIN:
    IF YY7 = 1 AND YY8 = 1 AND YY9 = 1 THEN GOTO P2WIN:
    IF YY1 = 1 AND YY4 = 1 AND YY7 = 1 THEN GOTO P2WIN:
    IF YY2 = 1 AND YY5 = 1 AND YY8 = 1 THEN GOTO P2WIN:
    IF YY3 = 1 AND YY6 = 1 AND YY9 = 1 THEN GOTO P2WIN:
    INPUT "", P2YC
    SELECT CASE P2YC
        CASE 1
            CIRCLE (25, 40), 20, 1
            P2Y1 = 1
            YY1 = 1
        CASE 2
            CIRCLE (25, 40 + 55), 20, 1
            P2Y2 = 1
            YY2 = 1
        CASE 3
            CIRCLE (25, 40 + 55 + 55), 20, 1
            P2Y3 = 1
            YY3 = 1
        CASE 4
            CIRCLE (85, 40), 20, 1
            P2Y4 = 1
            YY4 = 1
        CASE 5
            CIRCLE (85, 40 + 55), 20, 1
            P2Y5 = 1
            YY5 = 1
        CASE 6
            CIRCLE (85, 40 + 55 + 55), 20, 1
            P2Y6 = 1
            YY6 = 1
        CASE 7
            CIRCLE (85 + 60, 40), 20, 1
            P2Y7 = 1
            YY7 = 1
        CASE 8
            CIRCLE (85, 40 + 55), 20, 1
            P2Y8 = 1
            YY8 = 1
        CASE 9
            CIRCLE (85, 40 + 55 + 55), 20, 1
            P2Y9 = 1
            YY9 = 1
        CASE ELSE
            PRINT "NOT A AVALID NO,RESTART THE GAME"
            END
    END SELECT
    GOTO P1X:
LOOP
P1WIN:
CLS
FOR CVB = 100 TO 1000 STEP 50
    SOUND CVB, 3
NEXT CVB
RANDOMIZE TIMER
C1 = INT(RND * 11) + 1
COLOR C1, 0
PRINT "Player 1 won!!"
END
P2WIN:
CLS
FOR CVB2 = 100 TO 1000 STEP 50
    SOUND CVB2, 3
NEXT CVB2
C2 = INT(RND * 11) + 1
COLOR C2, 0
PRINT "Player 2 won!!"










































