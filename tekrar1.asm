
org 1000h
    
    mov ah,0eh
    mov cx,5
    mov bx,5
    mov dx,0
    
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
            print:
            mov al,'*'
            int 10h
            loop print
         
        mov al,0dh
        int 10h
        mov al,0ah
        int 10h
        
             inc dx
             dec bx
             
             pop cx
             
    loop dongu
        
    
   
ret