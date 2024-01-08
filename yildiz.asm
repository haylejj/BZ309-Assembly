org 100h
    
    mov cx,5
    mov ah,0eh
    dongu:
            mov al,'*'
            int 10h
     
            mov al,0ah 
            int 10h 
            mov al,0ah
            int 10h
                     
    loop dongu
    

ret
