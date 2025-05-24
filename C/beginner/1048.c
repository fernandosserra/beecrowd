/*https://judge.beecrowd.com/pt/problems/view/1048*/
/*Includes*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variables*/
    float income, bonus, perc;

    /*Input*/
    scanf("%f", &income);

    /*Calculations*/
    if (income <= 400) {
        perc = 0.15;
    } else if (income > 400 && income <= 800) {
        perc = 0.12;
    } else if (income > 800 && income <= 1200) {
        perc = 0.10;
    } else if (income > 1200 && income <= 2000) {
        perc = 0.07;
    } else {
        perc = 0.04;
    }

    /*Finding bonus*/
    bonus = income * perc;
    income += bonus;

    printf("Novo salario: %.2f\n", income);
    printf("Reajuste ganho: %.2f\n", bonus);
    printf("Em percentual: %.0f %%\n", perc * 100);

    /*End*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/