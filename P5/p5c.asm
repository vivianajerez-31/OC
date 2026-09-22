%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

    ;c)Defina una variable N de	2 bytes	de longitud. En	ella,	guarde	el	resultado	de	la	multiplicación	de	BL	por	8,	sin	considerar	los	signos.	
    ;c) N = BL * 8

    mov al, 8
    mul bl
    mov [N], ax 
    mov ax, [N]
	call pHex_w

	mov al, 10
	call putchar      	; 

	mov	eax, 1
    int 0x80

section .data
N dw 0