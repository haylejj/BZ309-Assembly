.data 
MyByte db 10h,11h,12h,13h,14h
MyByte2 dw 45h,61h
MyByte3 db 15h,16h,17h,18h,19h
enyuksek db ?

.code
testFunction proc 
	
	lea rbx, MyByte
	lea rax, MyByte2
	push 0BEBAh
	push word ptr [MyByte2]
	mov rax,123h
	push ax
	pop bx
	lea rdx, enyuksek 

testFunction endp

end
