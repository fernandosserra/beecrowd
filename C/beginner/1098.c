// https://judge.beecrowd.com/pt/problems/view/1098
// Sequência IJ 4

// Libraries

#include <stdio.h>

int main() {
    // Start I and J
    float I = 0;
    float J = 1;
    float aux = 0.2;

    // Iterating between numbers
    for (int i = 0; i < 11; i++) {
        for (int j = 0; j < 3; j++) {
            if (I == 0) {
                printf("I=%d J=%d\n", (int)I, (int)J);
            } else if (I == 1) {
                printf("I=%d J=%d\n", (int)I, (int)J);
            } else if (I > 1.9) {
                printf("I=%d J=%d\n", 2, (int)J);
            } else {
                printf("I=%.1f J=%.1f\n", I, J);
            }
            J += 1;
        }
        J = 1 + aux;
        I += 0.2;
        aux += 0.2;
    }

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra