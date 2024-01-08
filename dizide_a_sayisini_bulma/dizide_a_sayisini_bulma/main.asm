.data
string db 'cagatay$'

.code
findA proc
	lea rbx, string
	mov cx,0
	mov dx,0

	sonubul:
	mov al,byte ptr [rbx]
	inc cx
	inc rbx
	cmp al,'$'
	jne sonubul

	dec rbx

	cmp cx,5
	jl dongu
	mov cx,5

	dongu:
	dec rbx
	mov al,byte ptr[rbx]
	cmp al,'a'
	jne atla
	inc dx

	atla:
	dec cx
	jnz dongu

ret
findA endp
end
