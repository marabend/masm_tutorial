includelib kernel32.lib
ExitProcess proto

.data
var qword 100
.code
main proc
    xor rcx, rcx ; clear reg
    xor rdx, rdx; clear reg
    mov rcx, 33
    mov rdx, rcx
    mov rcx, var
    mov var, rdx
    call ExitProcess
main endp
end               
