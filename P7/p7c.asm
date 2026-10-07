%include "../LIB/pc_iox.inc"

;b) Secuencia que presente en pantalla un triangulo de asterisco. El tamaño del triangulo de
;asteriscos esta dado por el valor en el registro CX y puede ser de 0 a 10

section	.text
	global _start       ;referencia para inicio de programa
    
_start:   

    mov word [n], 3

    ;1 a n *
    mov cx, 1
asc_loop: ;ascendiente
    push cx
    mov bx, cx
    call print_asteriscos
    pop cx
    inc cx
    cmp cx, [n]
    jle asc_loop

    ;n=1 a 1 de *
    mov cx, [n]
    dec cx
desc_loop: ;descendente
    cmp cx, 0
    je fin_triangulo
    push cx
    mov bx, cx
    call print_asteriscos
    pop cx
    dec cx
    jmp desc_loop

fin_triangulo:
    mov eax, 1
    int 0x80

print_asteriscos:
    push cx
    mov cx, bx
    
pa_loop:
    mov al, '*'
    call putchar
    loop pa_loop
    mov al, 10 
    call putchar
    pop cx
    ret

section .data
    n dw 0