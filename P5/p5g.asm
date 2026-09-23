%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

    ;g) Guarde el valor en N y decremente N. Realice las operaciones necesarias para imprimir el registro de banderas y explique qué banderas están activas y la razón del porqué están activas.
    
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

    mov [N], ax
    dec word[N]

    mov ax, [N]
    call pHex_w
    mov al, 10
    call putchar
    pushfd
    pop eax
    call pHex_dw
    mov al, 10 
    call putchar

    mov eax, 1
    int 0x80

section .data
N dw 0    