%include "../LIB/pc_io.inc"  	; incluir declaraciones de procedimiento externos
								; que se encuentran en la biblioteca libpc_io.a

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov edx, msg		;
	call puts			; cadena orignal

    ;a) Haciendo uso del modo de direccionamiento directo remplace la primera letra de la cadena msg por la letra Z.

    mov byte[msg], 'z'

	mov	edx, msg    	
	call puts        	; cadena modificafa

section	.data
msg	db  'abcdefghijklmnopqrstuvwxyz0123456789',0xa,0 