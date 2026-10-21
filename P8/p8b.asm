%include "..LIB/pc_iox.inc"

DespVec:
    push ecx
    push ebx

DvLoop:
    mov al, [ebx]
    call pHex_b
    mov al, ''
    call putchar 
    inc ebx
    loop DvLoop
    pop ebx
    pop ecx
    ret





    
