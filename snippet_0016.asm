; Summing an ARRAY
.386
.model flat, stdcall
.stack 4096

include Irvine32.inc

ExitProcess proto, dwExitCode:dword
.data
intarray DWORD 10000h, 20000h, 30000h, 40000h

.code
main PROC
	mov edi, OFFSET intarray ; 1: EDI = address of intarray
	mov ecx, LENGTHOF intarray	; 2: initialize loop counter
	mov eax, 0					; 3 sum = 0
L1:								; 4 Beginning of loop
	add eax, [edi]				; 5: point to next element
	add edi, TYPE intarray		; 6: point to next element
	loop L1						; 7 Repeat until ECX = 0

	invoke DumpRegs
	invoke ExitProcess, 0
main ENDP
END main
