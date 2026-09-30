%include "../LIB/pc_iox.inc"

extern pBin_dw

;k) Multiplicar ESI por 10 usando operaciones de manipulación de bits. 

section	.text
	global _start       

_start:

    mov esi, 0x20D685F3
    xor esi, 0x40042021

    mov ebx, esi
    shl ebx, 1
    shl esi, 3
    add esi, ebx

    mov eax, esi 
    call pBin_dw
    mov al, 10 
    call putchar

    mov eax, 1
    int 0x80