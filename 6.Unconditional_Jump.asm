.MODEL SMALL
.STACK 200H
.DATA

.CODE 
    MAIN PROC
        
        START:
            MOV AH, 2
            MOV DL, 1
            INT 21H  
            
            MOV AH, 2
            MOV DL, 0AH
            INT 21H
                        
            JMP START
            
            
            MOV AH, 4CH
            INT 21H
     MAIN ENDP
END MAIN