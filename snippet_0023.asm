; Link Library Test

INCLUDE Irvine32.inc

TAB = 9			; Acii Coide for TAB

.code
	
	main PROC
		call Randomize			; int random generator
		call Rand1 
		call Rand2
		exit
	main ENDP

	Rand1 PROC
		; Generate ten pseude-random integers
		mov ecx, 10			; loop 10 times

L1:
	call Random32			; generate random int
	call WriteDec			; write in unsigned decimal
	mov al, TAB				; horizontal tab
	call WriteChar			; write the tab
	loop L1

	call Crlf
	ret
Rand1 ENDP

Rand2 PROC
	; Generate ten pseude-random integers from -50 to + 49
	mov ecx, 10				; loop 10 times

L1:
	mov eax, 100			; values 0-99
	call RandomRange		; generate random int
	sub eax, 50				; values -50 to +49
	call WriteInt			; write signed decimal
	mov al, TAB				; horizontal tab
	call WriteChar			; write the tab
	LOOP L1

	call Crlf
	ret
Rand2 ENDP
END main
