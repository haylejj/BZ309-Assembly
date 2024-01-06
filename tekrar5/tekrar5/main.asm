.data

.code
testfunc proc

	mov ax,0
	mov bx,1
	push ax
	push bx
	mov rcx,4

	dongu:
	add ax,bx
	push ax
	xchg ax,bx
	loop dongu

	ret
	
testfunc endp
end