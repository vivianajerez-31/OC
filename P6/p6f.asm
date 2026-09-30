%include "../LIB/pc_iox.inc"

extern pBin_w

;f) Colocar en el registro BP el valor 0x67DA y por medio de enmascaramiento desactivar los bits 1, 4, 6, 10 y 14, sin modificar los demás 

section .text
	global _start       

_start:

    mov bp, 0x67DA 
    xor bp, 0xBBAD

    mov aX, bp
    call pBin_w
    mov al, 10 
    call putchar

    mov eax, 1 
    int 0x80
    
