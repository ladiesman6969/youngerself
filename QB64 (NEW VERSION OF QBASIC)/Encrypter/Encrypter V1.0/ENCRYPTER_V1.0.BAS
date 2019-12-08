CLS
REM
MENU:
PRINT "Welcome to Encryter V1.1"
PRINT "1>Encrypt"
PRINT "2>Decrypt"
PRINT "3>About me!!"
PRINT "4>Exit"
DO
    X$ = INKEY$
LOOP UNTIL X$ = "1" OR X$ = "2" OR X$ = "3" OR X$ = "4"
SELECT CASE X$
    CASE "1", "2"
        GOTO SETUP:
    CASE "3", "4"
        GOTO MAA:
END SELECT
SETUP:
CLS
DIM A(30) AS STRING
A(1) = "_"
A(2) = "A"
A(3) = "B"
A(4) = "C"
A(5) = "D"
A(6) = "E"
A(7) = "F"
A(8) = "G"
A(9) = "H"
A(10) = "I"
A(11) = "J"
A(12) = "K"
A(13) = "L"
A(14) = "M"
A(15) = "N"
A(16) = "O"
A(17) = "P"
A(18) = "Q"
A(19) = "R"
A(20) = "S"
A(21) = "T"
A(22) = "U"
A(23) = "V"
A(24) = "W"
A(25) = "X"
A(26) = "Y"
A(27) = "Z"
A(28) = "*"
A(29) = " "
A(30) = "."
IF X$ = "1" THEN
    INPUT "Enter any sentence,nos,etc : ", B$
    PRINT "Encryted Message :-"
    FOR I = 1 TO LEN(B$)
        XO$ = MID$(B$, I, 1)
        X5$ = UCASE$(XO$)
        I2 = 1
        FOR I2 = 1 TO 40
            IF A(I2) = X5$ THEN
                PRINT A(I2 + 1);
                GOTO LL:
            END IF
        NEXT I2
        LL:
    NEXT I

    PRINT
    PRINT "Thanks for using!!"
    END
ELSEIF X$ = "2" THEN
    INPUT "Enter any senetnce,nos,etc : ", C$
    PRINT "Decrypted message:-"
    FOR I3 = 1 TO LEN(C$)
        OX$ = MID$(C$, I3, 1)
        Y$ = UCASE$(OX$)
        I4 = 1
        FOR I4 = 1 TO LEN(C$)
            IF A(I4) = Y$ THEN
                PRINT A(I4 - 1);
            END IF
        NEXT I4
    NEXT I3
    PRINT
    PRINT "Thanks for using!!"
    END
END IF
MAA:
SELECT CASE X$
    CASE "3"
        PRINT "This program is for educational purpose only!!"
        PRINT "Lead Programmer :- Debayan Sutradhar"
        PRINT "Encryption language founder :- Debaditya Sutradhar"
        PRINT "Wait for 10 seconds or press ANY key to go back to main menu"
        SLEEP 15
        GOTO MENU:
    CASE "4"
        BEEP
        STOP
END SELECT
END



