// https://judge.beecrowd.com/pt/problems/view/1075
// Resto 2

// Libraries
#include <stdio.h>

// Main Function
int main (){
    // Starting variables
    int usr_inputs;

    // Input
    scanf("%d", &usr_inputs);

    // Iteration
    for (int i = 1; i <= 10000; i++){
        if (i % usr_inputs == 2){
            printf("%d\n", i);
        }
    }

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra