.model small
.stack 100h
.data
msg1 db 'Enter a hex digit: $'
msg2 db 'In decimal it is: $'
.code
main proc

 mov ax,@data
 mov ds,ax
 lea dx,msg1
 mov ah,9
 int 21h

 mov ah,1
 int 21h
 mov bl,al
 sub bl,17d ; convert to corresponding hex value as C=67. So 67-17=50=’2’

 mov ah,2
 mov dl,0dh
 int 21h
 mov dl,0ah
 int 21h

 lea dx,msg2
 mov ah,9
 int 21h


 mov dl,49d ;print 1 at first
 mov ah,2
 int 21h

 mov dl,bl
 mov ah,2 ; print next value of hex after 1
 int 21h

 main endp
 end main