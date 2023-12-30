.data 
myByte dd 1234,5678h

.code 
test2 proc
	
	lea rdx,myByte

	mov rax, qword ptr [myByte]
	push rax
	push 94235633h

	pop rax
	pop rax

	ret
test2 endp
end