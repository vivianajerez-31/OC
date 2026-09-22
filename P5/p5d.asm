%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

    ;d) Incrementar	en 1 el	valor guardado en N.
    
    mov al, 8
    mul bl
    mov [N], ax
    mov ax, [N]

    inc word [N]
	call pHex_w

	mov al, 10
	call putchar      	; 

	mov	eax, 1
    int 0x80

section .data
N dw 0