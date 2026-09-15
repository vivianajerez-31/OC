%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a
section	.text
	global _start       ;referencia para inicio de programa

_start:                   
	mov edx, msg		;
	call puts			; cadena orignal

    ;d) Haciendo uso del modo de direccionamiento base mas índice remplace la letra z de la cadena msg por la letra Z

    mov	ebx, msg
    mov	ecx, 25 
    mov byte [ebx+ecx], 'Z' 

    mov	edx, msg    	
	call puts        	; cadena modificada

    mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80 

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 