#include <stdio.h>

int str_len(char *str);
void str_mid(char *str_out, char *str1_in, int start, int end);
int clrBit( int value, int nbit);

int main() {

    char salida[50];

    printf("str_len(\"hola\") = %d\n", str_len("hola"));
    printf("str_len(\"ensamblador\") = %d\n", str_len("ensambaldor"));

    str_mid(salida, "ensamblador", 0,2);
    printf("str_mid(0,2) = %s\n", salida);
    
    str_mid(salida, "ensamblador", 3,6);
    printf("str_mid(3,6) = %s\n", salida);

    printf("clrBit(15,1) = %d\n", clrBit(15,1));
    printf("clrBit(31,7) = %d\n", clrBit(31,7));

return 0;
}