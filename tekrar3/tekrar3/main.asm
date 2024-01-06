.data
isim dw 01h,02h,03h,04h,05h,06h,07h,08h,09h,10h

.code
func1 proc

	lea rbx,isim
	mov rcx,5
	xor r8,r8
	xor rax,rax
	xor rdx,rdx
	mov r8w,0002h
	dongu:
		mov ax,[rbx]
		mov dx,[rbx+2]

		add ax,dx
		cdq
		idiv r8w
		push ax
		add rbx,4
	loop dongu






func1 endp
end