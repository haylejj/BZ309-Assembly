.data
MyByte dd 16395h,84274h,61982h,43152h,10047h
enbuyuk dd ?

.code 
ASMdenDegerAl proc 
		
		lea rdx ,MyByte
		lea r12 ,enbuyuk
		mov cx,5
		sub rax,rax

		tekrar:
		push cx
		cmp eax,dword ptr[rdx]
		ja sonraki
		mov eax,dword ptr[rdx]

		sonraki:
		add rdx,4
		dec cx
		jnz tekrar
		mov dword ptr[r12],eax

		ret
ASMdenDegerAl endp
end	