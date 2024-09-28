; Calling a subroutine in 64-bit mode

ExitProcess PROTO
WriteInt64 PROTO
Crlf PROTO

.code
	main PROC
	sub rsp, 8		; align the stack pointer
	sub rsp, 20h	; reserver 32 bytes for shadow params

	mov rcx, 1		; pass for parameters in order
	mov rdx, 2
	mov r8, 3
	mov r9, 4
	call AddFour	; look the return value in RAX

	call WriteInt64	; display the number
	call Crlf		; Output a CR/LF

	mov ecx, 0
	call ExitProcess
main ENDP

AddFour PROC
	mov rax, rcx
	add rax, rdx
	add rax, r8
	adc rax, r9		; sum is in RAX
	ret
AddFour ENDP

END
