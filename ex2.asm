global _start

section .data				; this section allows us to inline data into the program that we can reference in code by name
	msg db "Hello, world!", 0x0a	; 0xa is hex for 10 and is the code for the new line character
	len equ $ - msg			; location(start of string) - loc(end of string) = len

section .text
_start:
	mov eax, 4			; sys_write system call
	mov ebx, 1			; stdout file descriptor
	mov ecx, msg			; bytes to write
	mov edx, len			; number of bytes to write
	int 0x80			; perform syscall
	mov eax, 1			; look at ex1.asm - sys_exit system call
	mov ebx, 0			; exit status is 0 which traditionally means the program ran successfully
	int 0x80
