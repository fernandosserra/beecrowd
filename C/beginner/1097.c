// https://judge.beecrowd.com/pt/problems/view/1097
// Sequência IJ 3

// Libraries
#include <stdio.h>

// Main function
int main(){
    // Variables
    int i = 1;
    int j = 7;

    // Iteration
    while(i <= 9){
        printf("I=%d J=%d\n", i, j);
        printf("I=%d J=%d\n", i, j - 1);
        printf("I=%d J=%d\n", i, j - 2);
        i += 2;
        j += 2;
    }

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra