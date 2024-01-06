.data

.code
ebob proc

	mov r9d,edx
	
	dongu:
	 cmp r9d,0
	 je bitti
	 mov r8d,r9d
	 mov eax,ecx
	 xor edx,edx
	 idiv r9d
	 mov ecx,r8d
	 mov r9d,edx
	 jmp dongu
	 bitti:
	 mov eax,ecx
	 ret

ebob endp
end