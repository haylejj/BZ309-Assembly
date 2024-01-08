.data
string db 'cagatay'
string2 db 7 dup(?)

.code 
testfunc proc
	
	mov rcx,7
	lea rbx,string
	lea r8,string2
	add rbx,6
	dongu:
		mov al, byte ptr[rbx]
		mov byte ptr[r8],al
		dec rbx
		inc r8
		loop dongu

testfunc endp
end