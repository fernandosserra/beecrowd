/*
A fórmula para calcular a área de uma circunferência é: 
area = π . raio2. Considerando para este problema que π = 3.14159:

- Efetue o cálculo da área, elevando o valor de raio ao quadrado e multiplicando por π.

Entrada
A entrada contém um valor de ponto flutuante 
(dupla precisão), no caso, a variável raio.

Saída
Apresentar a mensagem "A=" seguido pelo valor da variável area, 
conforme exemplo abaixo, com 4 casas após o ponto decimal. 
Utilize variáveis de dupla precisão (double). Como todos os problemas, não esqueça de imprimir 
o fim de linha após o resultado, caso contrário, você receberá "Presentation Error".
*/

/*Definitions*/ 
#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main (){
    /*Starting variables*/
    double raio, area;

    /*Scanning radius*/
    scanf("%lf", &raio);

    /*Calculating area*/
    area = PI * pow(raio, 2);
    
    /*Printing area*/
    printf("A=%.4lf\n", area);
    
    /*Ending program*/
    return 0;
}

/*Code by Fernando Serra*/
/*https://github.com/fernandosserra*/