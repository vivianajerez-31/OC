#include <stdio.h>

int suma(int num1, int num2);
int mystrcmp(char *str1, char *str2);
int mystrlen(char *str);
int getBit(int value, int numbit);
int setBit(int value, int numbit);

int main()
{
    printf("suma(5, 7) = %d\n", suma(5, 7));
    printf("suma(-3, 10) = %d\n", suma(-3, 10));

    printf("mystrcmp(\"hola\", \"hola\") = %d\n", mystrcmp("hola", "hola"));
    printf("mystrcmp(\"hola\", \"holA\") = %d\n", mystrcmp("hola", "holA"));
    printf("mystrcmp(\"hola\", \"hola!\") = %d\n", mystrcmp("hola", "hola!"));

    printf("mystrlen(\"ensamblador\") = %d\n", mystrlen("ensamblador"));
    printf("mystrlen(\"\") = %d\n", mystrlen(""));

    printf("getBit(5, 0) = %d\n", getBit(5, 0));
    printf("getBit(5, 1) = %d\n", getBit(5, 1));
    printf("getBit(5, 2) = %d\n", getBit(5, 2));

    printf("setBit(0, 2) = %d\n", setBit(0, 2));
    printf("setBit(1, 3) = %d\n", setBit(1, 3));

    return 0;
}
