includelib kernel32.lib
ExitProcess proto

.data
unum byte 10011001b ; Unsigned byte
sneg sbyte 10011001b ; Signed negative byte
snum sbyte 00110011b ; Signed positive byte
.code
main proc
   xor rcx, rcx
   xor rdx, rdx 
   xor r8, r8

   mov cl, unum
   mov dl, sneg
   mov r8b, snum

   shr cl, 2
   sar dl, 2
   sar R8, 2 ; Shift aritmetic right (all bits, except the sign bit)
main endp
end               
