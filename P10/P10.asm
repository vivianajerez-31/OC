section .text
    global pBin8b
    global pBin16b
    global pBin32b
    global pBin64b

; Procedimiento para desplegar un caracter en pantalla dado en el registro AL
my_putchar: 
    pushad                 ; salvar todos los registros
    push eax              ; salvar EAX -- meter el caracter a la pila
    mov eax,4            ; seleccionar el tipo llamada al sistema --> write (sys_write)
    mov ebx,1            ;  seleccionar la salida a pantalla ---> File descriptor 1 - standard output
    mov ecx,esp        ; ECX debe apuntar a la cadena, en este caso un caracter que está en la pila
    mov edx,1            ; EDX debe tener la longitud de la cadena, en este caso uno solo caracter
    int 80h                 ; llamar al sistema (escritura al standard output -- pantalla)
    pop eax                ; recuperar EXA 
    popad                  ; recuperar todos los registros
    ret

imprime_bits:
bits_loop: 
    shl esi, 1
    jc bit_uno
    mov al, '0'
    jmp bit_print
bit_uno: 
    mov al, '1'
bit_print:
    call my_putchar
    loop bits_loop
    ret
 
pBin8b:
    push ebp
    mov ebp, esp
    push esi
    mov esi, [ebp+8]
    shl esi, 24
    mov ecx, 8
    call imprime_bits
    mov al, 10
    call my_putchar
    pop esi
    pop ebp
    ret 

pBin16b:
    push ebp
    mov ebp, esp
    push esi
    mov esi, [ebp+8]
    shl esi, 16
    mov ecx, 16
    call imprime_bits
    mov al, 10 
    call my_putchar
    pop esi 
    pop ebp
    ret

pBin32b:
    push ebp
    mov ebp, esp
    push esi
    mov esi, [ebp+8]
    mov ecx, 32
    call imprime_bits
    mov al, 10 
    call my_putchar
    pop esi
    pop ebp
    ret

pBin64b: 
    push ebp
    mov ebp, esp
    push esi
    mov esi, [ebp+12]
    mov ecx, 32
    call imprime_bits
    mov esi, [ebp+8]
    mov ecx, 32
    call imprime_bits
    mov al, 10
    call my_putchar
    pop esi
    pop ebp
    ret