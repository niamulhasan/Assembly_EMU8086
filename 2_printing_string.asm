.MODEL SMALL
.STACK 200H
.DATA 
    MSG DB 10,13, 'I am a String $'
.CODE

    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX 
        
        MOV AH, 9
        LEA DX, MSG
        INT 21H 
        
        MOV AH, 4CH
        INT 21H 
        
    MAIN ENDP
END MAIN