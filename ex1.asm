global _start
_start:
	mov eax, 1	; Specifies the system call - 1 is exit
	mov ebx, 42	; Specifies the exit status. echo $? in bash or $status in fish
	sub ebx, 29	;
	int 0x80	; transfers control to interrupt handler at 0x80 which is system call
