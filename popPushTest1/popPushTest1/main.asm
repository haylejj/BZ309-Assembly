.data 
myByte dq 1234,5678h

.code 
test2 proc
	
	lea rdx,myByte
	
	push qword ptr [myByte]
	
	push 942356h

	pop ax
	pop rax

	ret
test2 endp
end