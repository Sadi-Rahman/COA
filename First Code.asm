.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
      MOV AH,2
      MOV DL,'?'
      INT 21H
    
    MAIN ENDP
END MAIN