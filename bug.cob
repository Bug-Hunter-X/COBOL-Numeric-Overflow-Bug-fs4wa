01  WS-AREA-1 PIC 9(5) VALUE 0. 
01  WS-AREA-2 PIC 9(5) VALUE 0. 

PROCEDURE DIVISION.

    ADD 1 TO WS-AREA-1.
    ADD WS-AREA-1 TO WS-AREA-2.
    DISPLAY WS-AREA-2.
    GOBACK.

This program has a potential bug if WS-AREA-1 is expected to hold a value larger than 99999.  When the program executes ADD 1 TO WS-AREA-1, if WS-AREA-1 reaches its maximum value, it will overflow, resulting in undefined behavior. This depends on the compiler implementation, it may wrap around, or throw an exception, or produce garbage values.