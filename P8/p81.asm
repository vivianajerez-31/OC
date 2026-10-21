%include "../LIB/pc_iox.inc"

N equ 5

section .text
    global _start 

_start:

;capturar 2 vectores
    mov ecx, N
    mov ebx, vect1
    call capturaVec
    mov ecx, N
    mov ebx, vect2
    call capturaVec

    mov al, 10
    call putchar

    ;mostrar los vect capturados
    mov ecx, N
    mov ebx, vect1
    call DespVec
    mov al, 10
    call putchar 

    mov ecx, N
    mov ebx, vect2
    call DespVec
    mov al, 10 
    call putchar

    ;calcular producto esc
    call pE
    call pHex_dw
    mov al, 10 
    call putchar

    ;suma de los vect
    mov ecx, N 
    mov ebx, vect1
    mov edx, vect2
    call SumVec

    ;mostrar el vect
    mov ecx, N 
    mov ebx, vect1
    call DespVec
    mov al, 10
    call putchar

    mov eax, 1
    int 0x80

;a)Procedimiento para capturar por teclado un vector de tamaño N el cual puede solamente
;contener valores numéricos tipo byte en el rango de 0 y 9. El lugar de memoria para
;almacenar el vector está dado por el registro EBX y la cantidad N por el registro ECX el cual
;puede ser máximo de 10.
capturaVec:
    push ecx 
    push ebx 

    cVloop:
    call getche 
    cmp al, 10
    je cVloop
    sub al, '0' 
    mov [ebx], al
    inc ebx
    loop cVloop
    pop ebx
    pop ecx
    ret

;b) Procedimiento para desplegar en pantalla un vector de bytes de tamaño N en formato
;hexadecimal. El lugar de memoria del vector a desplegar está dado por el registro EBX y la
;cantidad N por el registro ECX el cual puede ser máximo de 10.
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

;c) Procedimiento para calcular la suma de dos vectores tipo bytes de tamaño N. Los lugares de
;memoria de los vectores a sumar están dados por el registro EBX para el vector 1 y por EDX
;para para el vector 2. La cantidad N está dado en el registro ECX el cual puede ser máximo
;de 10. El vector resultante se almacena en el lugar de memoria del vector 1
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

;d) Diseñe e implemente un programa para leer y almacena en memoria dos vectores de tamaño
;N, y presente en pantalla el resultado de la suma de los vectores, así como su producto
;escalar. Los vectores a capturar solo contienen valores tipo byte en el rango de 0 a 9. El valor
;de tamaño de los vectores (N) es una constante de programa. Los datos desplegados en
;pantalla se presentan en formato hexadecimal

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

section .data
    vect1 times N db 0
    vect2 times N db 0