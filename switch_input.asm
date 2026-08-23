;========================================================
; Switch Input using 8085 + 8255
;========================================================
;
; Port B = Switch Input
; Port A = LED Output
;
; Switch states are directly displayed on LEDs.
;========================================================

PORTA   EQU 80H
PORTB   EQU 81H
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

        XRA A
        OUT PORTA

READ_SWITCH:

        ; Read switch status

        IN PORTB

        ; Send switch status to LEDs

        OUT PORTA

        JMP READ_SWITCH

        END