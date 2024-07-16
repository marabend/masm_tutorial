; A simple demonstration of a user-defined procedure
.code

; A sample user-defined prcedure that this program can call.

myProc proc
	ret ; 	
myProc endp

; Here is the main procedure

main PROC

; Call the user-defined procedure.

	call myProc

	ret ; Returns to the caller
main endp
	end
