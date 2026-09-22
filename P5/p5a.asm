%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
	
_start:                   
	mov ebx, 0x5C4B2A60	;
	add ebx, 0x02207526 ;

    ;a)Coloque	en	EBX	el	valor	0x5C4B2A60.	Sume	su	matrícula	como	valor	hexadecimal. Si	su	matrícula	es	12345678	expresarla	como	0x12345678.	Almacene	el	resultado	en	EBX.	

    mov	eax, ebx    	
	call pHex_dw

	mov	al, 10
	call putchar      	; 

	mov	eax, 1
    int 0x80