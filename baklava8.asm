      org 100h
         ;    *
         ;   **
         ;  ***
         ; ****
         ;*****
         ; ****
         ;  ***
         ;   **
         ;    *
         
         
         mov ah,0eh
         mov cx,4
         mov bx,1
         
         dongu:
         
         push cx
         
         bosluk:
            mov al,' '
            int 10h
         loop bosluk
         
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
         
         mov cx,bx
         
         yildiz2:
            mov al,'*'
            int 10h
         loop yildiz2
         
         mov al,0dh
         int 10h
         mov al,0ah
         int 10h
         
         mov cx,4
         mov bx,4
         mov dx,1
         
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
                     
         dec bx
         inc dx
         
         mov al,0dh
         int 10h
         mov al,0ah
         int 10h
         
         pop cx
         
         loop dongu2
         
      ret