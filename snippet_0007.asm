includelib kernel32.lib
ExitProcess proto

.data
var qword 2
.code
main proc
   xor rdx, rdx
   mov rax, 10
   mov rbx, 5
   mul rbx
   mul var
   mov rbx, 8
   div rbx
main endp
end               
