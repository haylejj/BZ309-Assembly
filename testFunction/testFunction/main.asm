.data 
MyByte db 10h,11h,12h,13h,14h
MyByte2 dw 45h,61h
MyByte3 dw 15h,16h,17h,18h,19h
enyuksek db ?

.code
testFunction proc 
	
	lea rbx, MyByte
	lea rax, MyByte2
	lea rcx, MyByte3
	push 0BEBAFECAh
	push word ptr [MyByte2]
	mov rax,123h
	
	push qword ptr [rcx]
	
	pop rbx
	lea rdx, enyuksek 

testFunction endp

end
