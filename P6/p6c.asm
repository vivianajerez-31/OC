%include "../LIB/pc_iox.inc"

extern pBin_dw

;c)Colocar en el registro ESI el valor 0x20D685F3 
y por medio de enmascaramiento invertir los bits 0, 5, 13, 18 y 30, sin modificar los demás.

section	.text
	global _start       ;referencia para inicio de programa

_start:
    mov esi, 0x20D685F3
    xor esi, 0x40042021

    mov eax, esi
    call pBin_dw
    mov al, 10
    call putchar

     