
.code
Comp proc 
mov ax,cx
cmp ax,dx
jl a
mov ax,dx
a:
cmp ax,r8w
jl b
mov ax,r8w
b:
ret
Comp endp
end