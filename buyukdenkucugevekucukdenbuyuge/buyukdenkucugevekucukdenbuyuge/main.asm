.data
mybyte db  'cagaTAY CNGZAB'
mybyte2 db 14 dup(?)

.code
ASMdenDegerAl proc 
    
    lea rdx,mybyte
    lea rbx,mybyte2
    mov rcx,14

    dongu:
        
        mov al, byte ptr[rdx]
        cmp al,'a'
        jb toLower
        cmp al,'z'
        ja next
        and al,11011111b
        jmp next
        toLower:
         cmp al,'A'
         jb next
         cmp al,'Z'
         ja next
         or al,00100000b

         next:
         mov byte ptr [rbx],al
         inc rbx
         inc rdx
         loop dongu
    

    ret
ASMdenDegerAl endp
end
