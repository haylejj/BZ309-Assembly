org 100h
   
   mov cx,5
   mov bx,5
   mov dx,0
   mov ah,0eh
   
   dongu:
        
         push cx       
         
         mov cx,dx
         cmp cx,0
         je printyildiz
         
         bosluk:
            mov al,' '
            int 10h
            loop bosluk
         
              
         printyildiz:
         mov cx,bx
         yildiz:
            mov al,'*'
            int 10h
            loop yildiz
            
         inc dx
         dec bx
         
         mov al,0dh
         int 10h
         mov al,0ah
         int 10h
             
         pop cx
         
    loop dongu
             
ret