// https://judge.beecrowd.com/pt/problems/view/1113
// Crescente e Decrescente

// Libraries
#include <stdio.h>

// Main Function
int main() {
    // Variables
    int x, y;
    int control = 0;

    // Scanning values
    while (control == 0) {
        scanf("%d %d", &x, &y);
        // Testing breaking point
        if (x == y) {
            control = 1;
            break;
        }
        
        // Testing conditions
        if (x < y) {
            printf("Crescente\n");
        }
        else {
            printf("Decrescente\n");
        }
    }

    // End
    return 0;    
}

// By Fernando Serra
// https://github.com/fernandosserra