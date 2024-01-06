.data
isim1 db 'cagatay cingIZ'
isim2 db 14 dup(?)

.code

ASMdenDegerAl proc
    
    Xor rax,rax

    lea rdx,isim1
    lea rbx,isim2
    add rdx,13
    mov rcx,14
    geriYazma:
    mov al,byte ptr [rdx]
    mov [rbx],al
    dec rdx
    inc rbx
    loop geriYazma
    
    ret
    ASMdenDegerAl endp
    end