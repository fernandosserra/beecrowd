/*https://judge.beecrowd.com/pt/problems/view/1045*/

/*Including libs*/
#include <stdio.h>
#include <math.h>

/*Main Function*/
void swap(double *a, double *b)
{
    double temp = *a;
    *a = *b;
    *b = temp;
}

int main()
{
    double A, B, C;

    scanf("%lf %lf %lf", &A, &B, &C);

    if (B > A)
        swap(&A, &B);
    if (C > B)
    {
        swap(&B, &C);
        if (B > A)
            swap(&A, &B);
    }

    if (A >= B + C)
    {
        printf("NAO FORMA TRIANGULO\n");
    }
    else
    {
        if (A * A == B * B + C * C)
            printf("TRIANGULO RETANGULO\n");
        else if (A * A > B * B + C * C)
            printf("TRIANGULO OBTUSANGULO\n");
        else
            printf("TRIANGULO ACUTANGULO\n");

        if (A == B && B == C)
            printf("TRIANGULO EQUILATERO\n");
        else if (A == B || A == C || B == C)
            printf("TRIANGULO ISOSCELES\n");
    }

    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/
/*Special thanks to xTecna on https://github.com/xTecna who made the original code*/