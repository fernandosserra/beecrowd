// https://judge.beecrowd.com/pt/problems/view/1066
// Pares, Ímpares, Positivos e Negativos

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting code and declarations
    int even_counter, odd_counter, positive_counter, negative_counter, general_counter, usr_input;

    general_counter = 0;
    even_counter = 0;
    odd_counter = 0;
    positive_counter = 0;
    negative_counter = 0;

    // Iterating
    while (general_counter < 5){
        scanf("%d", &usr_input);

        if (usr_input % 2 == 0){
            even_counter++;
        } else {
            odd_counter++;
        }
        if (usr_input > 0){
            positive_counter++;
        } else if (usr_input < 0){
            negative_counter++;
        }
        general_counter++;
    }

    // Showing results 
    printf("%d valor(es) par(es)\n", even_counter);
    printf("%d valor(es) impar(es)\n", odd_counter);
    printf("%d valor(es) positivo(s)\n", positive_counter);
    printf("%d valor(es) negativo(s)\n", negative_counter);
    
    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra