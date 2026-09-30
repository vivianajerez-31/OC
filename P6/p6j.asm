%include "../LIB/pc_iox.inc"

extern pBin_dw

;j) Sacar un valor de la pila y guardarlo en ESI. 

section	.text
	global _start       

_start:

    mov esi, 0x20D685F3
    xor esi, 0x40042021

    push esi
    pop esi

    mov eax, esi
    call pBin_dw
    mov al, 10
    call putchar

    mov eax, 1
    int 0x80
