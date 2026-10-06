%include "../LIB/pc_iox.inc"

;a)Secuencia que lea un carácter en el rango de ‘a’ a ‘z’ e indique mediante mensaje en
;pantalla si el carácter capturado es menor a ‘m’. – Use el procedimiento getche para
;capturar al carácter y procedimiento puts para presentar mensaje.

section	.text
	global _start       ;referencia para inicio de programa

_start:   

    call getche
    cmp al, 'm'
    jl menor

    mov edx, msg_mayor
    call puts
    jmp fin

    menor:
    mov edx, msg_menor
    call puts

    fin:
    mov eax, 1
    int 0x80

    section .data
    msg_menor db 10, 'El caracter es menor a m', 0xa,0
    msg_mayor db 10, 'El caracter es mayor o igual a m', 0xa,0