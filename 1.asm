.MODEL SMALL
.STACK 200H
.DATA
    NUM1 DB 104
    CHAR DB 'x'
    
.CODE
    MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 2
    MOV DL, NUM1
    INT 21H
    
    MOV AH, 2
    MOV DL, 010
    INT 21H
    
    MOV AH, 2
    MOV DL, 013
    INT 21H    
    
    MOV AH, 2
    MOV DL, CHAR
    INT 21H
    
    MOV AH, 4CH
    INT 21H    
    MAIN ENDP
END MAIN