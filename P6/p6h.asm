%include "../LIB/pc_iox.inc"

extern pBin_w

;h) Dividir EBX entre 32 usando operaciones de manipulación de bits. 

section .text
	global _start       

_start:

    mov bp, 0x67DA 
    xor bp, 0xBBAD

    shr bp, 3
    
    mov aX, bp
    call pBin_w
    mov al, 10 
    call putchar

    mov eax, 1 
    int 0x80
    
