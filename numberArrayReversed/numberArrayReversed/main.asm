.data 
array db 10h,20h,30h,40h,50h

.code

reverseArray proc
	
	lea rbx,array
	mov r8,rbx
	add r8,4
	mov cx,2

	dongu:

	mov al,[rbx]
	xchg al,[r8]
	mov [rbx],al

	inc rbx
	dec r8
	dec cx
	jnz dongu


reverseArray endp
end