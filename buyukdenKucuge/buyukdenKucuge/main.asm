.data
mybyte db  'CAGATAY CNGZAB'
mybyte2 db 14 dup(?)

.code
ASMdenDegerAl proc 
   
   lea rdx,mybyte
   lea rbx,mybyte2

   mov cx,14

   toLower:
    mov al,byte ptr [rdx]
    cmp al,'A'
    jb next
    cmp al,'Z'
    ja next
    or al,00100000b

    next:
    mov byte ptr [rbx],al
    inc rdx
    inc rbx
    dec cx
    jnz toLower
    
    
ret
ASMdenDegerAl endp
end