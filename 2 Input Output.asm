.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
      MOV AH,1
      INT 21H
      
      MOV CL,AL
      INT 21H
      MOV BL,AL
      
      MOV AH,2
      MOV DL,CL
      INT 21H 
      
      MOV DL,BL
      INT 21H 
      
    MAIN ENDP
END MAIN
