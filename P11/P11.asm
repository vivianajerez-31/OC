section .text
    global str_len
    global str_mid
    ;global int clrBit

;1.- int str_len (char *str) : Calcular y retorna la longitud de una cadena de caracteres (apuntada por str), 
;contando el número de caracteres hasta el carácter nulo de terminación (0) sin incluirlo.

    str_len:
        push ebp
        mov ebp, esp
        mov edx, [esp+8]
        mov eax, edx  ;mov eax, 0
                    ;cmp [edx] ->
    
    len_loop:
        cmp byte[eax], 0
        je len_fin
        inc eax
        jmp len_loop
    
    len_fin:
        sub eax, edx
        pop ebp
        ret