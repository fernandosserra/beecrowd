// https://judge.beecrowd.com/pt/problems/view/1096
// Sequência IJ 2

// Libraries
#include <stdio.h>

// Main
int main(){
    // Variables
    int i = 1, j = 7;

    // Iteration
    while(i <= 9){
        printf("I=%d J=%d\n", i, j);
        printf("I=%d J=%d\n", i, j - 1);
        printf("I=%d J=%d\n", i, j - 2);
        i += 2;
    }

    // Ending
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra