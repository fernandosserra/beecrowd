// https://judge.beecrowd.com/pt/problems/view/1173
// Preenchimento de Vetor I

// Libraries
#include <stdio.h>

// Main function
int main() {
    // Variables
    int progressiveVet[10];
    int userInput;

    // Input
    scanf("%d", &userInput);

    // Fill the array with the progressive values
    for (int i = 0; i < 10; i++) {
        progressiveVet[i] = userInput;
        printf("N[%d] = %d\n", i, progressiveVet[i]);
        userInput *= 2; // Double the value for the next index
    }

    return 0;    
}

// By: Fernando Serra
// https:// github.com/fernandosserra