.data 
array db 10h,20h,30h,40h,50h

.code

reverseArray proc
	
	lea rbx,array
	mov r8,rbx
	add r8,4
	mov cx,2

	dongu:

	mov al,byte ptr[rbx]
	xchg al,byte ptr[r8]
	mov byte ptr [rbx],al

	inc rbx
	dec r8
	dec cx
	jnz dongu
	ret
reverseArray endp
end