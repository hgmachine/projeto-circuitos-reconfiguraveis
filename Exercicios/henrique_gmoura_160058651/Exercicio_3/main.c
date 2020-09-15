#include <stdio.h>
#include <math.h>

#include "hipotenusa.h"

int main(void)
{
    int a,b,c;

    a= 24;
    b= 3;

    c= hipo(a,b);

    printf("Testando operadores a=24:\n");
    printf("Operador a>>3: %d\n",a>>3);
    printf("Operador a<<2: %d\n",a<<2);
    printf("O resultado da hipotenusa eh: %d\n",c);

    return EXIT_SUCCESS;
}
