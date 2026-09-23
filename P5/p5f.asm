%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

    ;f) Realice la suma entre el valor almacenado en N y el residuo de la división anterior.
    
    mov al, 8
    mul bl
    mov[N], ax
    inc word [N]

    mov ax, bx
    mov dx, 0
    mov cx, 0xFF
    div cx

    mov ax, [N]
    add ax, dx

    call pHex_w
	mov al, 10
	call putchar  

    mov	eax, 1
    int 0x80

section .data
N dw 0    