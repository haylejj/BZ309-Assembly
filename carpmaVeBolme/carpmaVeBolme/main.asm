.code
Multiply proc
	imul ecx,edx
	mov eax,ecx
	ret
Multiply endp

Divide proc
	mov r8d,edx
	mov eax,ecx
	cdq
	idiv r8d
	ret
Divide endp

Remainder proc
	mov r8d,edx
	mov eax,ecx
	cdq
	idiv r8d
	mov eax,edx
	ret
Remainder endp

end