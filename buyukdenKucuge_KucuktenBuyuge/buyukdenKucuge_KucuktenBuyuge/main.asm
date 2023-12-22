.data
mybyte db  'cagaTAY CNGZAB'
mybyte2 db 14 dup(?)

.code
ASMdenDegerAl proc 
    lea rdx,mybyte
    lea rbx,mybyte2
    mov rcx,14

    toLowerOrUpper:
     mov al,byte ptr[rdx]
     cmp al,65
     jb notLetter
     cmp al,90
     ja notLetter
     or al, 00100000b  ; b�y�k harfi k���k harfe d�n��t�rme
     jmp nextChar
    notLetter:
     cmp al,97
     jb nextChar
     cmp al,122
     ja nextChar
     and al, 11011111b  ; k���k harfi b�y�k harde d�n��t�rme
    nextChar:
        mov [rbx],al
        inc rdx
        inc rbx
        loop toLowerOrUpper
    ret
ASMdenDegerAl endp
end
