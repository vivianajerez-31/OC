%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov edx, msg		;
	call puts			; cadena orignal

    ;b) Haciendo uso del modo de direccionamiento indirecto remplace la letra x de la cadena msg por la letra X.

    mov	ebx, msg
    add ebx, 23
    mov byte [ebx], 'X' 

    mov	edx, msg    	
	call puts        	; cadena modificada

    mov	eax, 1	    	; seleccionar llamada al sistema para fin de programa
	int	0x80 

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 