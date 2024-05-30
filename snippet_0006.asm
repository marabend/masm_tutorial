includelib kernel32.lib
ExitProcess proto

.data
var qword 99
.code
main proc
   xor rcx, rcx
   inc var
   mov rcx, 51
   dec rcx
   neg rcx
main endp
end               
