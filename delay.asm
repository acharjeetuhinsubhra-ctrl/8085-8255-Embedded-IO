;========================================================
; delay.asm
; Software Delay Routine for 8085
;========================================================

        ORG 0000H

DELAY:
        LXI B,FFFFH

D1:
        DCX B
        MOV A,B
        ORA C
        JNZ D1

        RET

        END