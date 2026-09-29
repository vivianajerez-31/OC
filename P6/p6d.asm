%include "../LIB/pc_iox.inc"

extern pBin_dw

;d)Guardar ESI en la pila

section	.text
	global _start       

_start:

    mov esi, 0x20D685F3
    xor esi, 0x40042021

    push esi

    mov eax, esi
    call pBin_dw
    mov al, 10
    call putchar

    mov eax, 1
    int 0x80
