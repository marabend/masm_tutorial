includelib kernel32.lib
ExitProcess proto

.data

.code
main proc
   xor rcx, rcx
   xor rdx, rdx
   mov rcx, 0101b
   mov rdx, 0011b
   xor rcx, rdx
   and rcx, rdx
   or rcx, rdx
main endp
end               
