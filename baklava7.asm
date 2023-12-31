    org 100h
       
       ;*
       ;**
       ;***
       ;****
       ;*****
       ;****
       ;***
       ;**
       ;*
       
       mov cx,5 ;satir sayisi
       mov bx,1 ;yildiz sayisi
       mov ah,0eh
       
       dongu:
       
        push cx
        
        mov cx,bx
        yildiz:
         mov al,'*'
         int 10h
        loop yildiz
        
        inc bx
        
        mov al,0dh
        int 10h
        mov al,0ah
        int 10h
        
        pop cx
        
        loop dongu 
        
       
        
        mov cx,4
        mov bx,4
        
        dongu2:
        
        push cx
        
        mov cx,bx
        
        yildiz2:
        
        mov al,'*'
        int 10h
        loop yildiz2
              
        dec bx     
              
        mov al,0dh
        int 10h
        mov al,0ah
        int 10h
        
        pop cx
        
        loop dongu2
        
    ret