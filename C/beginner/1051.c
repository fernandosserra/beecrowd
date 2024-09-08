// https://judge.beecrowd.com/pt/problems/view/1051
// Imposto de Renda

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Variables
    float salary, tax;
    // Input
    scanf("%f", &salary);
    // Process
    if(salary <= 2000.00){
        printf("Isento\n");
    }else if(salary <= 3000.00){
        tax = (salary - 2000.00) * 0.08;
        printf("R$ %.2f\n", tax);
    }else if(salary <= 4500.00){
        tax = (1000.00 * 0.08) + ((salary - 3000.00) * 0.18);
        printf("R$ %.2f\n", tax);
    } else{
        tax = (1000.00 * 0.08) + (1500.00 * 0.18) + ((salary - 4500.00) * 0.28);
        printf("R$ %.2f\n", tax);
    }

    // Ending code
    return 0;
}