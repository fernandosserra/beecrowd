// https://judge.beecrowd.com/pt/problems/view/1134
// Tipo de Combustível

// Libraries
#include <stdio.h>

// Main
int main() {
    // Starting code and variables
    int user_input, alcohol, gas, diesel;

    // Initializing variables
    alcohol = 0;
    gas = 0;
    diesel = 0;

    // Iterating
    while(scanf("%d", &user_input) != EOF) {
        if(user_input == 1) {
            alcohol++;
        } else if(user_input == 2) {
            gas++;
        } else if(user_input == 3) {
            diesel++;
        } else if(user_input == 4) {
            break;
        }
    }

    // Showing results
    printf("MUITO OBRIGADO\n");
    printf("Alcool: %d\n", alcohol);
    printf("Gasolina: %d\n", gas);
    printf("Diesel: %d\n", diesel);

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra