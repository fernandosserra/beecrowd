// https://judge.beecrowd.com/pt/problems/view/1178
// Preenchimento de Vetor III

// Libraries
#include <stdio.h>

// Main
int main(){
    // Variables
    double N, vetor[100];

    // Input
    scanf("%lf", &N);

    // Fill the array with the values
    vetor[0] = N;
    for (int i = 1; i < 100; i++){
        vetor[i] = vetor[i - 1] / 2;
    }

    // Output
    for (int i = 0; i < 100; i++){
        printf("N[%d] = %.4lf\n", i, vetor[i]);
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra