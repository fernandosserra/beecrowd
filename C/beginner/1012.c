/*Including libraries*/
#include <stdio.h>
#include <math.h>

/*Main Function*/
int main (){
    /*Variable declaration and initialization*/
    double A, B, C;
    double TRIANGULO, CIRCULO, TRAPEZIO, QUADRADO, RETANGULO;
    
    /*Requesting values to user*/
    scanf("%lf" "%lf" "%lf", &A, &B, &C);
    
    /*Doing the calculations*/
    if (A > 0 && B > 0 && C > 0){
        TRIANGULO = (A * C) / 2;
        CIRCULO = 3.14159 * (pow(C, 2));
        TRAPEZIO = ((A + B) * C) / 2;
        QUADRADO = B * B;
        RETANGULO = A * B;
        
    }

    /*Showing results*/
    printf("TRIANGULO: %.3lf\n", TRIANGULO);
    printf("CIRCULO: %.3lf\n", CIRCULO);
    printf("TRAPEZIO: %.3lf\n", TRAPEZIO);
    printf("QUADRADO: %.3lf\n", QUADRADO);
    printf("RETANGULO: %.3lf\n", RETANGULO);    

    /*Ending code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/