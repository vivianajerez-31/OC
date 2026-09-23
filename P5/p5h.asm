%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

;h) Saque un dato de 16 bits de la pila.

    push bx ;
    pop bx  ;saca

    mov ax, bx
    call pHex_w
    mov al, 10
    call putchar
    
    mov eax, 1
    int 0x80


