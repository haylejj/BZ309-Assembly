.data
MyByte dq "C","AB"
MyByte2 dd 1234,7856h
MyByte3 db ?

.code 
test2 proc

	lea rax,MyByte
	lea rbx,MyByte2
	lea ecx,MyByte3


	ret
test2 endp
end