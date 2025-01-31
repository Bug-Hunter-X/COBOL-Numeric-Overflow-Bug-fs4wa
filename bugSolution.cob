01  WS-AREA-1 PIC 9(5) VALUE 0. 
01  WS-AREA-2 PIC 9(5) VALUE 0. 
01  WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

PROCEDURE DIVISION.

    ADD 1 TO WS-AREA-1 ON SIZE ERROR SET WS-OVERFLOW-FLAG TO 1.
    IF WS-OVERFLOW-FLAG = 0 THEN
        ADD WS-AREA-1 TO WS-AREA-2
    ELSE
        DISPLAY "Numeric overflow occurred!" 
    END-IF.
    DISPLAY WS-AREA-2.
    GOBACK.

This improved version includes an ON SIZE ERROR clause to handle potential overflow.  If an overflow occurs, the program sets a flag, and prevents further operations that could lead to unexpected behavior, improving the robustness and preventing data corruption.