%include "..LIB/pc_iox.inc"

SumVec:
    push ecx
    push ebx
    push edx

SvLoop:
    mov al, [ebx]
    add al, [edx]
    mov [ebx], al
    inc ebx
    inc edx
    loop SvLoop
    pop edx
    pop ebx
    pop ecx
    ret