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

; cx de�erini 5 ile kar��la�t�r
cmp cx , 5
jb dongu
mov cx,5

; Son 5 karakter i�inde 'a' harfi say�s�n� bul
dongu:
dec rbx
cmp byte ptr [rbx],'a'
jne atla
inc dx

atla:
dec cx
jnz dongu

; dx register'�ndaki de�er 'a' harfinin say�s�n� i�erir
ret
findA endp
end
