.data
array dw 1h,2h,3h,4h,5h,6h,7h,8h,9h,10h

.code
testfunc proc

	mov rcx,5
	lea r8,array
	mov r9w,0002h
	
	
	dongu:
		mov ax,[r8]
		mov dx,[r8+2]
		add ax,dx
		cdq
		div r9w
		push ax
		add r8,4
	loop dongu


testfunc endp
end