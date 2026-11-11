section .text
    global str_len
    global str_mid
    global clrBit

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

;2.- void str_mid( char *str_out, char *str1_in, int start, int end): Copia caracteres de la cadena de entrada 
;(apuntada por str1_in) a la cadena de salida (apuntada por str_out), iniciando de la posición start hasta las posición end.
        
    str_mid:
        push ebp
        mov ebp, esp
        push esi
        push edi 
        mov edi, [ebp+8]
        mov esi, [ebp+12]
        add esi, [ebp+16]
        mov ecx, [ebp+20]
        sub ecx, [ebp+16]
        inc ecx
        cmp ecx, 0
        jle mid_fin
    
    mid_loop:
        mov al, [esi]
        mov [edi], al
        inc esi
        inc edi
        loop mid_loop

    mid_fin:
        mov byte[edi], 0
        pop edi
        pop esi
        pop ebp
        ret

;3.- int clrBit( int value, int nbit): Retorna el valor de value con el el número de bit dado por nbit en cero.   
     
     clrBit:
        push ebp
        mov ebp, esp
        mov eax, [ebp+8]
        mov ecx, [ebp+12]
        mov edx, 1
        shl edx, cl
        not edx
        and eax, edx
        pop ebp
        ret

