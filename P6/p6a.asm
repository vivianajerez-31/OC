%include "../LIB/pc_iox.inc"

extern pBin_dw

;a)Coloque en EAX el valor 0x22446688 y por medio de rotaciones obtener 0x82244668.

section	.text
	global _start       ;referencia para inicio de programa

_start:   

    mov eax, 0x22446688
    mov eax, 4

    call  pBin_dw
    mov al, 10 
    call putchar 

    mov eax, 1
    int 0x80   