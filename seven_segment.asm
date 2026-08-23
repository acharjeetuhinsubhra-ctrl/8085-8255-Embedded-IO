;========================================================
; 7-Segment Display using 8085 + 8255
;========================================================
;
; Port C -> 7-Segment Display
;
; Displays digits 0 to 9 sequentially.
;========================================================

PORTC   EQU 82H
CONTROL EQU 83H

        ORG 0000H

START:

        ; Configure 8255

        MVI A,82H
        OUT CONTROL

DISPLAY_LOOP:

        MVI A,3FH
        OUT PORTC
        CALL DELAY

        MVI A,06H
        OUT PORTC
        CALL DELAY

        MVI A,5BH
        OUT PORTC
        CALL DELAY

        MVI A,4FH
        OUT PORTC
        CALL DELAY

        MVI A,66H
        OUT PORTC
        CALL DELAY

        MVI A,6DH
        OUT PORTC
        CALL DELAY

        MVI A,7DH
        OUT PORTC
        CALL DELAY

        MVI A,07H
        OUT PORTC
        CALL DELAY

        MVI A,7FH
        OUT PORTC
        CALL DELAY

        MVI A,6FH
        OUT PORTC
        CALL DELAY

        JMP DISPLAY_LOOP


;========================================================
; Delay
;========================================================

DELAY:

        LXI B,FFFFH

D1:
        DCX B
        MOV A,B
        ORA C
        JNZ D1

        RET

        END