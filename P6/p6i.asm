%include "../LIB/pc_iox.inc"

extern pBin_w

;i) Multiplicar CX por 8 usando operaciones de manipulación de bits. 

section .text
	global _start       

_start:
    
    mov cx, 0x3F48
    shl cx, 3
    shl cx, 3
    
    mov ax, cx
    call pBin_w
    mov al, 10 
    call putchar

    mov eax, 1
    int 0x80


