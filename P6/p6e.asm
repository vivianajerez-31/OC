%include "../LIB/pc_iox.inc"

extern pBin_dw

;e) Colocar en el registro CH el valor 0xA7 y por medio de enmascaramiento activar los bits 3 y 6, sin modificar los demás

section .text
	global _start       

_start:

    mov ch, 0xA7
    xor ch, 0x48

    mov al, ch
    call pBin_b
    mov al, 10 
    call putchar

    mov eax, 1 
    int 0x80
    
