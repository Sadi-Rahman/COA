.MODEL SMALL
.STACK 100H
.DATA 
MSG DB 0AH,0DH, 'THE SUM OF '  

MSG1 DB 'AND'        

SUM DB ?,'$'
 
.CODE
MAIN PROC
     
     MOV AX,@DATA
     MOV DS,AX
     
     MOV AH,2
     MOV DL,'?'
     INT 21H
     
     MOV AH,1
     INT 21H 
     MOV CL,AL
           
     
     INT 21H 
     MOV CH,AL
     
   
              
     ADD AL,CL
     SUB AL,30H
     MOV SUM,AL
     
     LEA DX,MSG
     MOV AH,9
     INT 21H 
     
     MOV AH,2
     MOV CL,AL
     INT 21H 
     
     LEA DX,MSG1
     MOV AH,9
     INT 21H 
     
     
    
     
    
     
     MOV AH,4CH
     INT 21H
     
    MAIN ENDP
END MAIN