/*https://judge.beecrowd.com/pt/problems/view/1037*/
/*Includes*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable initialization*/
    double n;

    /*Requesting values to user*/
    scanf("%lf", &n);

    /*Finding intervals and showing where the number is included*/
    if (n >= 0 && n <= 25){
        printf("Intervalo [0,25]\n");
    } else if (n > 25 && n <= 50){
        printf("Intervalo (25,50]\n");
    } else if (n > 50 && n <= 75){
        printf("Intervalo (50,75]\n");
    } else if (n > 75 && n <= 100){
        printf("Intervalo (75,100]\n");
    } else {
        printf("Fora de intervalo\n");
    }

    /*Ending code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/FernandoSerra*/