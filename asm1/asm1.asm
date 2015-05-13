SECTION .data			;initialized data

msg	db "echo this:",0xa,">"	;mensaje a imprimir
len 	equ $ - msg		;longitud del mensaje


SECTION .bss			;uninitiallized data

input:	resb 50			;variable de entrada del usuario, arr 50 bytes
	
SECTION .text 			;asm
		
global _start

_start:				;el 'main'
	mov edx,len		;ultimo parametro del llamado al sistema, count
	mov ecx,msg		;char * buf "echo this \n >"
	mov ebx,1		;file descriptor (1 = stdout)
	mov eax,4		;sys_write(fd, buf, count)
	int 0x80		;llamado al OS

	;; lee input
	mov edx,50		;count = 50   chars a leer
	mov ecx,input		;buf = input
	mov ebx,0		;fd = 0 (entrada standar)
	mov eax,3		;sys_read()
	int 0x80		;llamado al OS

	mov edx,50		
	mov ecx,input		
	mov ebx,1		
	mov eax,4		
	int 0x80
	
	mov eax,1		;exit
	int 0x80
