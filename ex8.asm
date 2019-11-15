global _start

_start:
	call func
	mov eax, 1
	mov ebx, 0
	int 0x80

func:
	push ebp		; This setup portion of preserving the stack and allocating space is called the prologue of the function
	mov ebp, esp		
	sub esp, 2		; subtract 2 from esp - this is how you allocate 2 bytes on the stack
	mov [esp], byte 'H'
	mov [esp+1], byte 'i'
	mov eax, 4		; sys_write system call
	mov ebx, 1		; stdout file descriptor
	mov ecx, esp
	mov edx, 2
	int 0x80
	mov esp, ebp		; This portion of restoring the stack and returning is called epilogue
	pop ebp
	ret 
