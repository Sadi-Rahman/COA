.model small
.stack 100h
.data
msg db 'ENTER THREE INITIALS: $'
.code
main proc

 mov ax,@data ;initialize data segment
 mov ds,ax
 lea dx,msg
 mov ah,9
 int 21h

 mov ah,1
 int 21h
 mov bl,al


 mov ah,1
 int 21h
 mov cl,al


 mov ah,1
 int 21h
 mov bh,al

 mov ah,2
 mov dl,0dh ;caariage return
 int 21h
 mov dl,0ah ;new line
 int 21h



 mov ah,2
 mov dl,bl
 int 21h

 mov dl,0dh
 int 21h
 mov dl,0ah
 int 21h


 mov ah,2
 mov dl,cl
 int 21h

 mov dl,0dh
 int 21h
 mov dl,0ah
 int 21h


 mov ah,2
 mov dl,bh
 int 21h

 mov ah,4ch
 int 21h

 main endp
 end main