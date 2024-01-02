        org 100h
   
   ;    *
   ;   ***
   ;  *****
   ; *******
   ;********* 
   ; *******
   ;  *****
   ;   ***
   ;    *
   
   
   mov cx,4
   mov bx,1  
    mov ah,0eh      
   dongu:
    
    push cx
           
         
        bosluk:
        mov al,' '
        int 10h
        loop bosluk
        
        mov cx,bx
        yildiz1:
        mov al,'*'
        int 10h
        loop yildiz1
        
        add bx,2
        
        
        mov al,0dh
        int 10h
        mov al,0ah
        int 10h  
        
     pop cx 
        
    loop dongu:
    
    mov cx,bx
    
    yildiz2:
    mov al,'*'
    int 10h
    loop yildiz2 
    
    ;baklavanin tersi
    
    mov al,0dh
    int 10h
    mov al,0ah
    int 10h  
    
    mov dx,1
    mov cx,4
    mov bx,7
    
    dongu2:
    push cx
    
        mov cx,dx
        bosluk2:
        mov al,' '
        int 10h
        loop bosluk2
              
        mov cx,bx      
        yildiz3:
        mov al,'*'
        int 10h
        loop yildiz3
        
        sub bx,2
        inc dx    
    
              
        mov al,0dh
        int 10h
        mov al,0ah
        int 10h
        
        pop cx
        
   loop dongu2     
        
            
ret