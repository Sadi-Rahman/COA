.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    
      MOV AH,1
      INT 21H
  				; TAKES INPUT 
      MOV BL,AL
      INT 21H
      MOV BH,AL
      INT 21H
      MOV CL,AL

 				 ; SHOWS THE OUTPUT  
      MOV AH,2
      MOV DL,BL
      INT 21H
      MOV DL,BH
      INT 21H
      MOV DL,CL
      INT 21H

    MAIN ENDP
END MAIN
