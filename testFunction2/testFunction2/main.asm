.data 
data db 0

.code 
 TestFunction2 proc
	
	mov rax,205h
	mov data,10h
	mov rbx,20h
	mov rcx,15h

	lea rcx,data

	cmp rax,rbx
	jg func

	add rax,rbx
	sub rbx,rcx
	sub cl,data
	mov rax,89h
	neg rax
	neg rax 
	inc rax
	inc data

	func:
	mov rax,2
	mov rbx,5
	xchg rax,rbx

	mov ecx,5

	mainloop:
	dec ecx
	jnz mainloop
	


TestFunction2 endp
end