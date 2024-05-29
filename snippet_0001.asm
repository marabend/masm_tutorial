includelib kernel32.lib 	; Import a standard Windows library
ExitProcess proto		; Define an imported library function. 

.data				; Start of the data section
				; <- Variable declarations go here.
.code				; Start of the code section
main proc			; Program entry procedure.
				; <- Assembly instructions go here.
call ExitProcess		; Execute the imported library function

main endp			; End of the main procedure
end				; End of the Assembly program
