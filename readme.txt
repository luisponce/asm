para compilar 

$ nasm -f elf -o <output> <src>
$ ld -m elf_i386 -s -o <output> <*.o>

llamados al sistema
	  http://asm.sourceforge.net/syscall.html
	  http://www.digilife.be/quickreferences/qrc/linux%20system%20call%20quick%20reference.pdf

nasm 
     http://leto.net/writing/nasm.php


http://stackoverflow.com/questions/1947121/a-good-nasm-fasm-tutorial


timezone 
	en unix "$ date +%Z" trae la zona horaria, la de colombia es COT
	la informacion se guarda en un archivo en /etc/localtime, la salida es asi en America/Bogota
	
	
	LMTBMTCOSTCOT▒▒▒▒▒▒▒▒▒▒ BMTCOSTCOTTZif2▒▒▒▒^▒4▒▒▒▒▒▒XUp*sP+▒]@▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
	COT5
