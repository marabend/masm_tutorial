includelib kernel32.lib
ExitProcess proto

.data
var qword ?
.code
main proc
    xor rcx, rcx
    xor rdx, rdx
    mov rcx, 5
    xchg rcx, var ; transfer the value of var into rcx
    mov dl, 3
    xchg dh, dl
    call ExitProcess
main endp
end               
