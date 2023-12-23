.data
array dw 3461h,4587h
array2 dq 1234567891234567h

.code
datapush proc

	push 52h;
	push 14256789h;

	
	push 0BEBAFECAh
	push qword ptr [array2]

ret
datapush endp
end