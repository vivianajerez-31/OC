 %include "..LIB/pc_iox.inc"

pE:

    push ecx
    push esi
    push ebx
    push edx
    xor eax, eax
    xor esi, esi 

PeLoop:
    cmp esi, N
    jge peFin
    movzx ebx, byte [vect1 + esi]
    movzx edx, byte [vect2 + esi]
    imul ebx, edx
    add eax, ebx
    inc esi
    jmp PeLoop

peFin:
    pop edx 
    pop ebx
    pop esi 
    pop ecx
    ret
