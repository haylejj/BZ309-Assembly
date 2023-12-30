          org 100h
             ;*****
             ;****
             ;***
             ;**
             ;*
             
             mov cx,5 ; satir sayisi
             mov bx,5 ;yildiz sayisi
                     
             dongu:        
             push cx
             
             mov cx,bx
                     
             yildiz:
             
             mov al,'*'
             mov ah,0eh
             int 10h  
             
             loop yildiz
          
             dec bx 
             
             mov al,0dh
             int 10h
             
             mov al,0ah
             int 10h
             
             pop cx
             
             loop dongu
          
          
          ret