.data
isim1 db 'cagatay cingiz'
isim2 db 14 dup(?)

.code

ASMdenDegerAl proc
    
    Xor rax,rax

    lea rdx,isim1
    lea rbx,isim2
    add rdx,13

    geriYazma:

    mov al,byte ptr [rdx]
    cmp al,97
    jb ileri
    cmp al,122
    ja ileri
    and al,11111111b

    ileri:
    mov [rbx],al
    dec rdx
    inc rbx
    loop geriYazma
    
    ret
    ASMdenDegerAl endp
    end