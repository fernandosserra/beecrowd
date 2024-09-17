// https://judge.beecrowd.com/pt/problems/view/1073
// Quadrado de pares

// Libraries
#include <stdio.h>
#include <math.h>

int main(){
    // Starting codes and variables
    int usr_input;

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for (int i = 1; i <= usr_input; i++){
        if (i % 2 == 0){
            printf("%d^2 = %.0f\n", i, pow(i, 2));
        }
    }

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra