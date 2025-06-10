// https://judge.beecrowd.com/pt/problems/view/1177
// Preenchimento de Vetor II

// Libraries
#include <stdio.h>

// Main function
int main(){
    // Declare variables
    int userInput;
    int systemVector[1000];

    // Read user input
    scanf("%d", &userInput);

    // Fill the system vector with the specified pattern
    for(int i = 0; i < 1000; i++){
        systemVector[i] = i % userInput;
    }

    // Print the system vector
    for(int i = 0; i < 1000; i++){
        printf("N[%d] = %d\n", i, systemVector[i]);
    }   

    return 0;
}

// By: Fernando Serra
// https:// github.com/fernandosserra