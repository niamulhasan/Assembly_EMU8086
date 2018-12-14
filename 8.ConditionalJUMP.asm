.MODEL SMALL
.STACK 200H
.DATA
    STR DB 'I AM A STRING $'
    
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX  
        
        MOV CX, 10
        MOV BX, 0
              
        START:
            
            CMP BX, CX
            JE RETURN
               
                MOV AH, 9
                LEA DX, STR
                INT 21H
                
                MOV AH, 2
                MOV DL, 0AH
                INT 21H
                MOV AH,2
                MOV DL, 0DH
                INT 21H 
                
                INC BX
            JNE START    
            
        
        
        RETURN:
        
            MOV AH, 4CH
            INT 21H
        
    MAIN ENDP
END MAIN