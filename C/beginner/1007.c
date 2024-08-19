/*Incluing Libraries*/
#include <stdio.h>

/*Main Function*/
int main() {
    /*Variable declaration and initialization*/
    int a, b, c, d, dif;
    
    /*Requesting values to user*/
    scanf("%d", &a);
    scanf("%d", &b);
    scanf("%d", &c);
    scanf("%d", &d);
    
    /*Doing the calculations*/
    dif = ((a * b) - (c * d));
    
    /*Showing results*/
    printf("DIFERENCA = %d\n", dif);

    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/