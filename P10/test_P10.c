#include <stdio.h>
#include <stdint.h>

void pBin8b (uint8_t dato);  
void pBin16b (uint16_t dato); 
void pBin32b (uint32_t dato); 
void pBin64b (uint64_t dato); 

int main () {
    printf("pBin8b(1) = "); 
    fflush(stdout); pBin8b(1);
    printf("pBin8b(5) = ");
    fflush(stdout); pBin8b(5);
    printf("pBin8b(255) = ");
    fflush(stdout); pBin8b(255);


    printf("pBin16b(1) = ");
    fflush(stdout); pBin16b(1);
    printf("pBin16b(10) = ");
    fflush(stdout); pBin16b(10);
    printf("pBin16b(255) = ");
    fflush(stdout); pBin16b(255);


    printf("pBin32b(1) = ");
    fflush(stdout); pBin32b(1);
    printf("pBin32b(10) = ");
    fflush(stdout); pBin32b(10);
    printf("pBin32b(255) = ");
    fflush(stdout); pBin32b(255);

    printf("pBin64b(1) = ");
    fflush(stdout); pBin64b(1);
    printf("pBin64b(10) = ");
    fflush(stdout); pBin64b(10);
    printf("pBin64b(255) = ");
    fflush(stdout); pBin64b(255);

return 0; 
}