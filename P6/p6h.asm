%include "../LIB/pc_iox.inc"

extern pBin_dw

;h) Dividir EBX entre 32 usando operaciones de manipulación de bits. 

section .text
	global _start       

_start:
    
    mov ebx, 0x82244668
    shr ebx, 5

    mov eax, ebx
    call pBin_dw
    mov al, 10 
    call putchar
    
    mov eax, 1
    int 0x80

