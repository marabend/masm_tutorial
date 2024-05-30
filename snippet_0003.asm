includelib kernel32.lib
ExitProcess proto

.data
con EQU 12 ; defining a constant
.code
main proc
    mov rcx, con
    mov rdx, con + 8
    mov rcx, con + 8 * 2
    mov rcx, con mod 5
    mov rdx, (con - 3) / 3
    call ExitProcess
main endp
end               
