.data
string db 'cagatay$'

.code
findA proc
lea rbx,string
mov cx,0
mov dx,0

; Dizginin sonuna kadar ilerle
sonuBul:
mov al,[rbx]
inc cx
inc rbx
cmp al ,'$'
jne sonuBul

dec rbx

; cx deðerini 5 ile karþýlaþtýr
cmp cx , 5
jb dongu
mov cx,5

; Son 5 karakter içinde 'a' harfi sayýsýný bul
dongu:
dec rbx
cmp byte ptr [rbx],'a'
jne atla
inc dx

atla:
dec cx
jnz dongu

; dx register'ýndaki deðer 'a' harfinin sayýsýný içerir
ret
findA endp
end
