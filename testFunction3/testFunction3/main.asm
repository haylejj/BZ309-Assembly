.data
data db 10h, 20h, 30h, 40h, 50h, 60h, 70h, 80h, 90h
data2 dd 13045h,65097h,34028h,80510h,40984h
enBuyuk dd ?

.code
testFunction3 proc

	lea rbx,data2
	lea r8,enbuyuk
	mov cx,5
	xor eax,eax
	

	dongu:
	cmp eax,dword ptr[rbx]
	ja next
	mov eax,dword ptr[rbx]

	next:
	add rbx,4
	dec cx
	jnz dongu

	mov dword ptr [r8],eax

	testFunction3 endp
	end
