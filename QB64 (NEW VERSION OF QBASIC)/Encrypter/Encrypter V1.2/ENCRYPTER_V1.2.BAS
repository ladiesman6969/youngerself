CLS
REM
MENU:
PRINT "Welcome to Encryter V1.2"
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
DIM A(50) AS STRING
A(1) = "- "
A(2) = "-1"
A(3) = "-2"
A(4) = "-3"
A(5) = "-4"
A(6) = "-5"
A(7) = "-6"
A(8) = "-7"
A(9) = "-8"
A(10) = "-9"
A(11) = "_"
A(12) = "0"
A(13) = "1"
A(14) = "2"
A(15) = "3"
A(16) = "4"
A(17) = "5"
A(18) = "6"
A(19) = "7"
A(20) = "8"
A(21) = "9"
A(22) = "A"
A(23) = "B"
A(24) = "C"
A(25) = "D"
A(26) = "E"
A(27) = "F"
A(28) = "G"
A(29) = "H"
A(30) = "I"
A(31) = "J"
A(32) = "K"
A(33) = "L"
A(34) = "M"
A(35) = "N"
A(36) = "O"
A(37) = "P"
A(38) = "Q"
A(39) = "R"
A(40) = "S"
A(41) = "T"
A(42) = "U"
A(43) = "V"
A(44) = "W"
A(45) = "X"
A(46) = "Y"
A(47) = "Z"
A(48) = "*"
A(49) = " "
A(50) = "."
IF X$ = "1" THEN
    INPUT "Enter any sentence,nos,etc : ", B$
    PRINT "Encryted Message :-"
    FOR I = 1 TO LEN(B$)
        XO$ = MID$(B$, I, 1)
        X5$ = UCASE$(XO$)
        I2 = 1
        FOR I2 = 1 TO 50
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
        FOR I4 = 1 TO 50
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



