.data
string db 'cAgAtAy cÝnGiZ'
string2 db 14 dup(?)


.code 
testfunc proc

	lea rdx,string
	lea rbx,string2
	mov cx,14

	;büyük yapma
	toUpper:
		mov al,byte ptr[rdx]
		cmp al,'a'
		jb toLower
		cmp al,'z'
		ja nextChar
		and al,11011111b
		jmp nextChar

	toLower:
		cmp al,'A'
		jb nextChar
		cmp al,'Z'
		ja nextChar
		or al,00100000b
	nextChar:
	mov byte ptr[rbx],al
	inc rdx
	inc rbx
	dec cx
	jnz toUpper

testfunc endp
end