.data
string dw  1h,2h,3h,4h,5h,6h,8h,8h,9h,10h

.code
testfunction proc
	
	lea rbx,string
	xor rdx,rdx
	add rbx,18
	add rdx,rbx
	sub rbx,18

	mov rcx,10

	dongu:
		mov ax,word ptr[rbx]
		xchg ax,word ptr[rdx]
		mov word ptr [rbx],ax
		add rbx,2
		sub rdx,2
		loop dongu

testfunction endp
end