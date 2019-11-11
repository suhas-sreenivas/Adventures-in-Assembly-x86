global _start

section .text
_start:
	mov ecx, 101	; value to comapare
	mov ebx, 42	; exit status
	mov eax, 1	; sys_exit system call
	cmp ecx, 100	; compare ecx to imm val
	jl skip		; jump if less than
	mov ebx, 13	; set exit status to check if branch was taken
skip:
	int 0x80
