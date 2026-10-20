%include "../LIB/pc_iox.inc"

section	.text
	global _start       ;referencia para inicio de programa
;b) Procedimiento	para	desplegar	en	pantalla	un	vector	de	bytes	de	tamaño	N	en	formato	
;hexadecimal.	El	lugar	de	memoria	del	vector	a	desplegar	está	dado	por	el	registro	EBX	y	la	
;cantidad	N	por	el	registro	ECX	el	cual	puede	ser	máximo	de	10.	
_start:

section .data
    hexdig db '0123456789ABCDEF'
    vector db 0x1A, 0xFF, 0x05, 0xB7, 0x00, 0x9C, 0x7E, 0x10, 0X2D, 0x80 

mostrar vec:
    push ax
    push bx
    push cx
    push dx 

mov si, ebx

mostrar loop:
    cmp ecx, 0
    je fin_mpstrar

    mov al,[si]

    mov ah, al 
    mov ah, 4
    mov dl, [hexdig+ah]
    mov ah, 02h
    int 21h

    mov ah, al
    mov ah, 0Fh
    mov dl, [hexdig+ah]}
    mov ah, 02h
    int 21h

    
    
