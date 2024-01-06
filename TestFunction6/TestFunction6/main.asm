.data
MyByte dq "C","AB"
MyByte2 dd 1234,7856h
MyByte3 db ?

.code 
test2 proc

	;lea rcx,MyByte3
	;lea rbx,MyByte2
	;lea rax,MyByte
	lea rax,MyByte
	lea rbx,MyByte2
	lea rcx,MyByte3

	ret
test2 endp
end