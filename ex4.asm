global _start

section .text
_start:
	mov ebx, 1	; ebx(exit status) will hold the output
	mov ecx, 4	; will hold loop counter
label:
	add ebx, ebx	; double ebx
	dec ecx		; ecx -= 1
	cmp ecx, 0	; compare ecx with 0
	jg label	; jump to label if ecx greater than 0
	mov eax, 1	; sys_exit system call
	int 0x80	;
