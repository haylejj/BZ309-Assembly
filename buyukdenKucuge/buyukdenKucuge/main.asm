.data
mybyte db  'CAGATAY CNGZAB'
mybyte2 db 14 dup(?)

.code
ASMdenDegerAl proc 
   

    lea rdx,mybyte
    lea rbx,mybyte2
    mov rcx,14

    toUpper:
     mov al,byte ptr[rdx]
     cmp al,'A'
     jb ileri
     cmp al,'Z'
     ja ileri
     or al,00100000b
     ileri:
        mov byte ptr [rbx],al
        inc rdx
        inc rbx
        loop toUpper
ret
ASMdenDegerAl endp
end