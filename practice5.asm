org 100h

    mov dl,'?'
    mov ah,02h
    int 21h
    
    mov ah,01h
    int 21h
    ;mov dl,al
    
    mov dl,13d
    mov ah,02h 
    int 21h
    
    mov dl,10d
    mov ah,02h
    int 21h
    
    mov dl,'*'
    mov ah,02h
    int 21h

ret
