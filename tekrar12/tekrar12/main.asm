.data
array db 69h,80h,12h,95h,44h
enbuyuk db ?

.code
testfunc proc

	lea rbx,array
	lea r8,enbuyuk

	mov rcx,4
	xor rax,rax

	dongu:
		cmp al,byte ptr[rbx]
		ja sonraki
		mov al,byte ptr[rbx]
		sonraki:
		inc rbx
		loop dongu
	mov byte ptr [r8],al


testfunc endp
end