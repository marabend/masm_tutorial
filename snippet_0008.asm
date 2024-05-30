includelib kernel32.lib
ExitProcess proto

.data
var qword 4
.code
main proc
   xor rax, rax
   xor rbx, rbx
   mov rax, 10
   mov rbx, 2
   imul rbx
   imul rax, var
   imul rax, rbx, -3
main endp
end               
