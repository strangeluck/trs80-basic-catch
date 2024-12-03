;"BOMB" TRACKER FOR CATCH/BAS
;UPON USER ENTRY, SHIFTS TRACKER DOWN & ADDS NEW BOMBS
;     WHEN NEEDED
;
;ENTRY: y=USR(x) x = 1 when new bomb dropped
;                x = 0 when no new bombs dropped
;                y = 0 when no bombs on bucket level
;                y = PRINT@ loc'n when bomb hits bottom
;
START   CALL    0A7FH       ;GET BOMB DROP INDICATOR
        LD      A,(15359)   ;GET BOMB TRACKING BYTE
        SRL     A           ;SHIFT BOMB BITS "DOWN"
        PUSH    AF          ;SAVE CARRY FLAG
        SRL     L           ;TEST IF H(L) = 1
        JR      NC,NOBOM    ;IF NC THEN DONT ADD BOMB
        SET     7,A         ;ADD NEW BOMB TO BYTE
NOBOM   LD      (15359),A   ;SAVE NEW BYTE
        POP     AF          ;RESTORE BOMB HIT FLAG
        RET     NC          ;LEAVE IF NO BOMB AT BUCKET
        LD      HL,16255    ;END OF 14TH LINE
CHECK   INC     HL          ;TO NEXT LOC'N
        LD      A,(HL)      ;CHECK LOC'N
        CP      '@'         ;BIG BOMB THERE?
        JR      Z,BOMB      ;IF SO LEAVE
        CP      'O'         ;REG BOMB THERE?
        JR      NZ,CHECK    ;IF SO LEAVE
BOMB    XOR     A           ;RESET CARRY FLAG
        LD      DE,15360    ;SUB 15360 FOR PRINT@
        SBC     HL,DE
        JP      0A9AH       ;RETURN VALUE TO BASIC
        END
