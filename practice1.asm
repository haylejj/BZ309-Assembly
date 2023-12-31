org 100h
   ;ax registerindaki deðer 10 dan kucuk ise 7,buyuk ise 17 kere o degeri yazdiran bir program
   
   mov ax,15
   cmp ax,10
   jle dongu7
   
   dongu17:
   mov cx,17
   jmp yazdir
   
   dongu7:
   mov cx,7
   jmp yazdir
   
   yazdir:   
   mov ah,9h
   lea dx,yazi
   int 21h
   
   mov dl,10d
   mov ah,2h
   int 21h
   
   
   
   loop yazdir
   
   
   
   
ret          
yazi db "abc$"