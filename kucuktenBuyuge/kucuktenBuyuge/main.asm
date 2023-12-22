.data
isim db 'cagatay Cingiz'
isim2 db 14 dup(?)

.code
ASMdenDegerAl proc

	lea rdx,isim
	lea rbx,isim2
	mov rcx,14

	toUpper:

	mov al,byte ptr[rdx];
	cmp al,97
	jb ileri
	cmp al,122
	ja ileri
	and al,11011111b

	ileri:
	
	mov [rbx],al
	inc rdx
	inc rbx
	loop toUpper

ASMdenDegerAl endp
end
