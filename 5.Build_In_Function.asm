INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 200H
.DATA

.CODE
    MAIN PROC
        
        PRINT 'HELLO WORLD'
        PRINT 'HELLO WITH LINE BREAK'
        
        PRINTN 'HELLO WORLD'
        PRINTN 'HELLO WITH LINE BREAK'
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN