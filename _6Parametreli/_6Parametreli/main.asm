extern MyProc:proc

.code
CallAppProcedure proc
    sub rsp,30h

    mov ecx,1
    mov edx,2
    mov r8d,3
    mov r9d,4
    mov dword ptr [rsp+20h],5
    mov dword ptr [rsp+28h],6
    call MyProc
    add rsp,30h
    ret
CallAppProcedure endp
end