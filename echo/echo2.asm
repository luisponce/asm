SECTION .data
ln:	db "",0xa
len:	equ $ - ln
arg:	db "",0
	
	
SECTION .text
	
global _start

_start:
	pop eax			;numero de argumentos - argc
	pop eax			;el llamado al programa - argv[0]

	pop ebx			;el primer argumento - argv[1] 
	mov ecx, -1		;i=-1
.while:	
	inc ecx			;i++
	cmp byte[ebx+ecx],0	;if (arg[i] != 0)
	jne .while

.print:	
	mov edx,ecx		;tamano de lo que escribe
	mov eax, 4		;escribe primer argumento
	mov ebx,1 		;fd - out
	mov ecx,ebx		;write(fd, buf, count)
	int 0x80
	
	
	mov eax,1
	int 0x80
