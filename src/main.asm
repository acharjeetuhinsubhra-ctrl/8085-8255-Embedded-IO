;========================================================
; 8085 + 8255 Embedded I/O Interface
;========================================================
; Port A      -> LEDs
; Port B      -> Switches
; Port C      -> 7-Segment Display
;
; Assumed addresses:
; PORTA = 80H
; PORTB = 81H
; PORTC = 82H
; CONTROL = 83H
;
; 8255 Mode 0
;========================================================

PORTA   EQU 80H
PORTB   EQU 81H
PORTC   EQU 82H
CONTROL EQU 83H

        ORG 0000H

START:
        ;----------------------------------------
        ; Initialize 8255
        ; Port A = Output
        ; Port B = Input
        ; Port C = Output
        ; Mode 0
        ;----------------------------------------

        MVI A,82H
        OUT CONTROL

        ; Clear outputs
        XRA A
        OUT PORTA
        OUT PORTC

MAIN:
        ;----------------------------------------
        ; Read switches
        ;----------------------------------------

        IN PORTB

        ; Display switch state on LEDs
        OUT PORTA

        ;----------------------------------------
        ; Display lower 4 bits on 7-segment
        ;----------------------------------------

        ANI 0FH
        CALL DISPLAY_HEX

        JMP MAIN


;========================================================
; DISPLAY_HEX
;
; Input:
;   A = value 0-9
;
; Output:
;   7-segment display through Port C
;========================================================

DISPLAY_HEX:

        CPI 0AH
        JC DISPLAY_DIGIT

        ; Values A-F are not handled
        MVI A,00H

DISPLAY_DIGIT:

        MOV E,A
        MVI D,00H

        LXI H,SEG_TABLE

        DAD D

        MOV A,M
        OUT PORTC

        RET


;========================================================
; 7-Segment Lookup Table
;
; Common Cathode display
;========================================================

SEG_TABLE:

        DB 3FH     ; 0
        DB 06H     ; 1
        DB 5BH     ; 2
        DB 4FH     ; 3
        DB 66H     ; 4
        DB 6DH     ; 5
        DB 7DH     ; 6
        DB 07H     ; 7
        DB 7FH     ; 8
        DB 6FH     ; 9


        END
