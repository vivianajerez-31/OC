%include "../LIB/pc_iox.inc"

extern pBin_w

;b)Coloque en CX el valor 0x3F48 y por medio de corrimientos obtener 0xFA40.

section	.text
	global _start       ;referencia para inicio de programa

_start:   

    mov cx, 0x3F48 
    shl cx, 3

    mov ax, cx
    call pBin_w
    mov al, 10 
    call putchar 
    
    mov eax, 1
    int 0x80

