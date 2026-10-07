%include "../LIB/pc_iox.inc"

;d)Secuencia que capture y almacena 10 caracteres y los almacena en un arreglo de bytes

section	.text
	global _start       ;referencia para inicio de programa
    
_start:   
    mov ecx, 10 
    mov edi, arreglo 
captura:
    call getche
    mov [edi], al
    inc edi 
    loop captura
    mov edx, msg
    call puts

    ;uno por renglon
    mov esi, arreglo 
    mov ecx, 10 

mostrar:
    mov al, [esi]
    call putchar
    mov al, 10 
    call putchar
    inc esi 
    loop mostrar
    
    mov eax, 1
    int 0x80

section .data
    msg db 10,'DATOS CAPTURADOS', 0xa,0 
    arreglo times 10 db 0 

