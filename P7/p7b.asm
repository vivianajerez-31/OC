%include "../LIB/pc_iox.inc"

;b) Secuencia que sea un carácter en el rango [‘0’ .. ‘9’] y [‘A’ .. ’Z’] e indique mediante
   ;mensaje en pantalla si el carácter capturado es letra o número.

section	.text
	global _start       ;referencia para inicio de programa
    
_start:   

    call getche

    cmp al, '0'
    jl no_valido 
    cmp al, '9'
    jle es_numero
 
    cmp al, 'A'
    jl no_valido 
    cmp al, 'Z'
    jle es_letra


no_valido:
    mov edx, msg_invalido
    call puts
    jmp fin

es_numero:
    mov edx, msg_numero
    call puts
    jmp fin  

es_letra:
    mov edx, msg_letra
    call puts

fin:
    mov eax, 1
    int 0x80
    
section .data

    msg_numero db 10, 'El caracter es un numero', 0xa,0
    msg_letra db 10, 'El caracter es una letra', 0xa,0
    msg_invalido db 10, 'El caracter no se encuentra', 0xa,0