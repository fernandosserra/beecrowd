// https://judge.beecrowd.com/pt/problems/view/1172
// Substituição em Vetor I

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Variables
    int usrInputs[10];

    // Scanning Values
    for (int i = 0; i < 10; i++){
        scanf("%d", &usrInputs[i]);
    }

    // Showing Results
    for (int i = 0; i < 10; i++){
        if (usrInputs[i] <= 0){
            usrInputs[i] = 1; // Replacing negative or zero values with 1
        }
        printf("X[%d] = %d\n", i, usrInputs[i]); // Printing the results
    }
    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra