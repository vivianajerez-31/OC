%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a
section	.text
	global _start       ;referencia para inicio de programa

_start:                   
	mov edx, msg		;
	call puts			; cadena orignal

    ;c) Haciendo uso del modo de direccionamiento relativo a registro remplace el número 0 de la cadena msg por el símbolo @.

    mov	ebx, msg
    mov byte [ebx+26], '@' 

    mov	edx, msg    	
	call puts        	; cadena modificada

    mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80 

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 