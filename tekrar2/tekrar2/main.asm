.data
sayi dw 10h,11h,12h,13h,14h,15h,16h,17h,18h,19h
.code
testfunc proc
lea rbx, sayi
mov rcx, 5
xor rax, rax
xor rdx, rdx
xor r8,r8
dongu:
mov ax, [rbx] 
mov dx, [rbx+2]
add ax, dx
mov r8w,2
div r8w
push ax
add rbx, 4 
loop dongu
ret
testfunc endp
end
