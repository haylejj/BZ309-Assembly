           org 100h
             
             mov cx,5
             mov ah,0eh
             
             dongu:
             inc bx
             mov al,'*'
             int 10h  
             ;satir atlama
             mov al,0ah
             int 10h
             loop dongu
             
           ret