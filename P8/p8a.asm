%include "..LIB/pc_iox.inc"

section .text
;a) Procedimiento	para	capturar por	teclado	un	vector	de	tamaño	N	el	cual	puede	solamente	
;contener	valores	numéricos	tipo byte	en	el	rango	de	0	y	9.	El	lugar	de	memoria	para	
;almacenar	el	vector	está	dado por	el	registro	EBX	y	la	cantidad	N	por	el	registro	ECX	el	cual	
;puede	ser	máximo	de	10.	

capturaVec:
    push ecx 
    push ebx 

    cVloop:
    call getche 
    sub al, '0' 
    mov [ebx], al
    inc ebx
    loop cVloop
    pop ebx
    pop ecx
    ret



    
