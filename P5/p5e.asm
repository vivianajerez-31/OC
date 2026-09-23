%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

    ;e) Divida el valor almacenado en BX entre 0xFF. Imprima tanto el cociente como el residuo de la operación.
    ;e) BX / 0xFF
    
    mov ax, bx
    mov dx, 0
    mov cx, 0xFF
    div cx

    call pHex_w
	mov al, 10
	call putchar  

    mov ax, dx
    call pHex_w
    mov al, 10
    call putchar

    mov	eax, 1
    int 0x80