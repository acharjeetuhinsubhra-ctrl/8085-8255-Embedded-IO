;========================================================
; LED Control using 8085 + 8255
;========================================================

PORTA   EQU 80H
CONTROL EQU 83H

        ORG 0000H

START:

        ; Configure 8255
        ; Port A = Output
        ; Port B = Input
        ; Port C = Output
        ; Mode 0

        MVI A,82H
        OUT CONTROL

        ; Turn OFF all LEDs

        XRA A
        OUT PORTA


LED_LOOP:

        ;--------------------------------
        ; LED Pattern 1
        ;--------------------------------

        MVI A,01H
        OUT PORTA

        CALL DELAY

        ;--------------------------------
        ; LED Pattern 2
        ;--------------------------------

        MVI A,02H
        OUT PORTA

        CALL DELAY

        ;--------------------------------
        ; LED Pattern 3
        ;--------------------------------

        MVI A,04H
        OUT PORTA

        CALL DELAY

        ;--------------------------------
        ; LED Pattern 4
        ;--------------------------------

        MVI A,08H
        OUT PORTA

        CALL DELAY

        JMP LED_LOOP


;========================================================
; Delay Routine
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