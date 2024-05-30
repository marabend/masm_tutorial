includelib kernel32.lib
ExitProcess proto

.data
var qword 64
.code
main proc
   xor rcx, rcx
   xor rdx, rdx
   mov rcx, 36
   add rcx, var
   mov rdx, 400
   add rdx, rcx
   sub rcx, 100
main endp
end               
