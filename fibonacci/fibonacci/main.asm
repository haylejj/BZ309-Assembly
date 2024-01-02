.data
MyByte db 10,11,12,13
MyByte2 dq 12h,34h
MyByte3 dd 35h,20h
Mybyte4 dd 12
MyByte5 dw 1234h,5678h
enyuksek db ?

.code
fibonacci proc 
mov rax,0
mov rbx,1
mov rcx,9

dongu:
	push rax
	add rax,rbx
	xchg rax,rbx
	loop dongu

	ret
fibonacci endp
end