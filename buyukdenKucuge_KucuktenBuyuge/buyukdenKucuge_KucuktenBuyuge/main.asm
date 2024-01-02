.data
mybyte db  'cagaTAY CNGZAB'
mybyte2 db 14 dup(?)

.code
ASMdenDegerAl proc 
    lea rdx,mybyte
    lea rbx,mybyte2
    mov rcx,14

    toUpper:
        mov al,byte ptr [rdx]
        cmp al,'a'
        jb toLower
        cmp al,'z'
        ja nextChar
        and al, 11011111b
        jmp nextChar
    toLower:
        cmp al,'A'
        jb nextChar
        cmp al,'Z'
        ja nextChar
        or al,00100000b
    nextChar:
        mov [rbx],al
        inc rdx
        inc rbx
        loop toUpper
    ret
ASMdenDegerAl endp
end
