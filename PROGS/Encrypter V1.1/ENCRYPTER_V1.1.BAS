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
DIM A(40) AS STRING
A(1) = "_"
A(2) = "0"
A(3) = "1"
A(4) = "2"
A(5) = "3"
A(6) = "4"
A(7) = "5"
A(8) = "6"
A(9) = "7"
A(10) = "8"
A(11) = "9"
A(12) = "A"
A(13) = "B"
A(14) = "C"
A(15) = "D"
A(16) = "E"
A(17) = "F"
A(18) = "G"
A(19) = "H"
A(20) = "I"
A(21) = "J"
A(22) = "K"
A(23) = "L"
A(24) = "M"
A(25) = "N"
A(26) = "O"
A(27) = "P"
A(28) = "Q"
A(29) = "R"
A(30) = "S"
A(31) = "T"
A(32) = "U"
A(33) = "V"
A(34) = "W"
A(35) = "X"
A(36) = "Y"
A(37) = "Z"
A(38) = "*"
A(39) = " "
A(40) = "."
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
        FOR I4 = 1 TO 40
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



