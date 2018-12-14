.MODEL SMALL
.STACK 200H
.DATA
    X DB ?
    Y DB ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
        MOV AH, 1
        INT 21H     
        MOV X, AL
        SUB X, 48
        
        
        MOV AH, 1
        INT 21H
        MOV Y, AL 
        SUB Y, 48   
        
        
        
        
        MOV AH, 2      ; NEW LINE
        MOV DL, 0AH
        INT 21H
        MOV AH, 2
        MOV DL, 0DH
        INT 21H  
        
         
        MOV BH, X
        ADD BH, Y
        ADD BH, 48
        INT 21H 
        
        MOV AH, 2
        MOV DL, BH
        INT 21H
        
        MOV AH, 4CH
        INT 21H
     MAIN ENDP
END MAIN