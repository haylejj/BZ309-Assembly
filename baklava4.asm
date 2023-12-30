           org 100h
             ;    *
             ;   **
             ;  ***
             ; ****
             ;*****
             
             mov cx,4 ; satir sayisi
             mov bx,1 ;yildiz sayisi
                     
             dongu:        
             push cx
             
             bosluk:
                mov al,' '
                mov ah,0eh
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
             
          ret