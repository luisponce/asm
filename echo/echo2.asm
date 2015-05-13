SECTION .data
ln:	db "",0xa
len:	equ $ - ln

SECTION .bss

arg:	resb 50
arg2:	resb 50
	
SECTION .text
	
global _start

_start:
	pop eax			;numero de argumentos - argc
	pop eax			;el llamado al programa - argv[0]

	pop eax			;el primer argumento - argv[1]
	mov [arg],eax
	pop eax
	mov [arg2],eax

	mov ebx,[arg]
	call printf

	mov ebx,[arg2]
	call printf
	
	mov eax,1
	mov ebx,0
	int 0x80

;;; en ebx el string a escribir
printf:
	mov ecx, -1		;i=-1
.while:	
	inc ecx			;i++
	cmp byte[ebx+ecx],0	;if (arg[i] != 0)
	jne .while

.print:	
	mov edx,ecx		;tamano de lo que escribe
	mov eax, 4		;escribe primer argumento
	mov ecx,ebx		;write(fd, buf, count)
	mov ebx,1 		;fd - out
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx,ln
	mov edx,1
	int 0x80

	ret
