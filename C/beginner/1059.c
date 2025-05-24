// https://judge.beecrowd.com/pt/problems/view/1059
// Números pares

// Libraries
#include <stdio.h>

// Main code
int main() {
    int i = 1;
    while (i <= 100) {
        if (i % 2 == 0) {
            // Printing even numbers
            printf("%d\n", i);
        }
        i++;
    }
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra