includelib kernel32.lib
ExitProcess proto

.data

.code
main proc
   xor rax, rax
   xor rbx, rbx
   xor rdx, rdx
   mov rax, 100
   mov rbx, 3
   idiv rbx
   mov rax, -100
   cqo					; quadword to octoword RAX->RDX.RAX
   idiv rbx

; CBW = byte to word
; CWD = word to double word
; CDQ = double word to quadword
; CQO = quadword to octoword
main endp
end               
