.code
GCD proc

	mov r9d,edx

	dongu:
	cmp r9d,0
	je son
	mov r8d,r9d
	mov eax,ecx
	xor edx,edx
	div r8d
	mov r9d,edx
	mov ecx,r8d
	jmp dongu

	son:
	mov eax,ecx
	ret 

GCD endp
end
