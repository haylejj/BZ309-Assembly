.data
isim dd "B", "AB", 1234,5678h
isim2 dd 1234h,5678h

.code
testfunction proc


lea rax,isim

mov ebx,dword ptr[rax+2]

push 0B1234567h


ret
testfunction endp
end