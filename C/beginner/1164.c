// https://judge.beecrowd.com/pt/problems/view/1164
// Número Perfeito

// Libraries
#include <stdio.h>

// Main
int main(){

    // Variables
    int testCases, usrInput;

    // Getting number of cases
    scanf("%d", &testCases);

    // Iterating
    for(int i = 1; i <= testCases; i++){
        
        // Collecting candidates to check their perfection
        scanf("%d", &usrInput);
        
        // Starting sum, for checking perfection
        int sum = 0;

        // Iterating between multiples
        for(int j = usrInput - 1; j > 0; j--){
            if(usrInput % j == 0){
                sum += j;
            }
        }

        // Checking perfection
        if(sum == usrInput){
            printf("%d eh perfeito\n", usrInput);
        } else {
            printf("%d nao eh perfeito\n", usrInput);
        }
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra