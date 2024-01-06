.code 
GCD proc
	
	;ecx birinci parametre 
	;edx ikinci parametre

	mov r9d,edx

	dongu:
		
		cmp r9d,0
		je bitti

		mov r8d,edx
		mov eax,ecx
		xor edx,edx
		div r8d
		mov r9d,edx
		mov ecx,r8d
	jmp dongu
	bitti:
		mov eax,ecx
	ret

	
		
	GCD endp
	end