.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
        MOV AH,1
        INT 21H
        MOV BL,AL
        
        INT 21H
        MOV BH,AL
        
        ADD BL,BH 
        SUB BL,30H   ;FOR ADD VALUE LOWER THAN 10
        
        MOV AH,2
        MOV DL,BL
        INT 21H
        
        MOV AH,4CH
        INT 21H
        
    MAIN ENDP
END MAIN