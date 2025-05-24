// https://judge.beecrowd.com/pt/problems/view/1095
// Sequência IJ 1

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting Code
    int i = 1, j = 60;
    
    // Iteration
    while (j >= 0)
    {
        // Printing
        printf("I=%d J=%d\n", i, j);
        i += 3;
        j -= 5;
    }
    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra