; Addition and Subtraction

.386
.model flat, stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data

Rval SDWORD ?
Xval SDWORD 26
YVal SDWORD 30
Zval SDWORD 40

.code
main PROC
	; INC and DEC
	mov ax, 1000h
	inc ax			; 1001h
	dec ax			; 1000h

	; Expression: Rval = -Xval + (Yval - Zval)
	mov eax, Xval
	neg eax			; -26
	mov ebx, Yval	
	sub ebx, Zval	; -10
	add eax, ebx
	mov Rval, eax	; -36

	; Zero flag example:
	mov cx, 1
	sub cx, 1		; ZF = 1
	mov ax, 0FFFFh	
	inc ax

	; Sign flag example
	mov cx, 0
	sub cx, 1		; SF = 1
	mov ax, 7FFFh	
	add ax, 2

	;; Carry flag example
	mov al, 0FFh
	add al,1		; CF = 1, AL = 00

	; Overflow flag example
	mov al, +127
	add al, 1		; OF = 1
	mov al, -128
	sub al, 1		; OF = 1

	invoke ExitProcess, 0

main ENDP

END main
