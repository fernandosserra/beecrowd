// https://judge.beecrowd.com/pt/problems/view/1159
// Soma de Pares Consecutivos

// Libraries
#include <stdio.h>

// Main
int main(){

    // Variables
    int usr_input, sum;
    sum = 0;

    // Iterating

    while (1){
        // Getting Input
        scanf("%d", &usr_input);

        // Testing input to find zero and break the loop
        if (usr_input == 0){
            break;
        }
        
        // Iterating

        // If Odd move to next number
        if (usr_input % 2 != 0) {
            usr_input++;
        }

        // Getting the next even values
        for (int i = 0; i < 5; i++) {
            sum += usr_input;
            usr_input += 2;
        }

        printf("%d\n", sum);
        sum = 0;
       
    }  

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra