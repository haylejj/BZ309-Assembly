.data
veri db "ABC"
veri6 dw "B","AB",1234,5678h
veri4 dd 12h,20
veri2 db ?

.code 
test2 proc

	;lea rax,veri2
	;lea rcx,veri4
	;lea rdx,veri6
	;lea rbx,veri

	lea rax,veri4
	mov rbx,[rax]

	ret

test2 endp

end
