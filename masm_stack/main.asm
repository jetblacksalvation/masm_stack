includelib kernel32.lib
includelib msvcrt.lib
ExitProcess  proto	
.data	

.code 
	main proc

	add rsp, 20h; 32 bytes are required per function call a call auto-matically uses 8, so alloc x8 where x is any number bigger than 0
	add rsp, 1; from the current address, reserve 8 bits? 
	mov rcx ,rsp;moving the address to rcx
	mov qword ptr[rcx], 10; derefing the address and putting in 10 
	;mov rcx, rsp +8

	sub rsp, 1;same as a hex 1 
	sub rsp, 20h; stack clean up 
	call ExitProcess


	main endp	

end	