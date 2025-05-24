// https://judge.beecrowd.com/pt/problems/view/1143
// Quadrado e ao Cubo

// Libraries
#include <stdio.h>

// Main
int main(){
    // Starting code, declarating variables
    int usr_input;

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for(int i = 1; i  < usr_input + 1; i++){
        // Showing results
        printf("%d %d %d\n", i, i * i, i * i * i);
    }
    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandoserra