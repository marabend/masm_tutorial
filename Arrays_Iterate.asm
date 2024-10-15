; Only snippet, without main

.data
array SWORD -3,-6,-1TO16,-10,10,30,40,4
sentinel SWORD 0
.code
	mov esi, OFFSET array
	mov ecx, LENGTHOF array

L1: test WORD PTR[esi], 8000h ; test sign bit
	pushfd					  ; push flags on stack
	add esi, TYPE array		  ; move to next position
	popfd					  ; pop flags from stack
	loopnz L1				  ; continue loop
	jnz quit				  ; none found
	sub esi, TYPE array	      ; ESI points to value
	quit:
