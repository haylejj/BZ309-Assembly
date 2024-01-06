.data
array dw 69h,87h,96h,45h,75h
enyuksek dw ?

.code
testfunc proc
		
		lea rbx ,array
		lea rdx,enyuksek
		mov rcx,5
		sub rax,rax

		tekrar:
		cmp ax,word ptr[rbx]
		ja sonraki
		mov ax,word ptr[rbx]

		sonraki:
		add rbx,2
		
		loop tekrar
		mov word ptr[rdx],ax

		ret
testfunc endp
end