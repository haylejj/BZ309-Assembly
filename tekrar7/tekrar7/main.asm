.data
string db 'cagatay$'

.code
testfunc proc

	mov rcx,0
	mov rdx,0
	lea rbx,string

	sonubul:
		mov al,byte ptr[rbx]
		inc rbx
		inc rcx  
		cmp al,'$'
		jne sonubul

	dec rbx

	cmp rcx,5
	jle dongu
	mov rcx,5

	dongu:
		dec rbx
		cmp byte ptr [rbx],'a'
		jne atla
		inc dx
		atla:
		loop dongu

	mov rax,rdx
	ret


testfunc endp
end