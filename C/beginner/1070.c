// https://judge.beecrowd.com/pt/problems/view/1070
// Seis números ímpares

// Libraries
#include <stdio.h>

// Main Function
int main() {
    // Starting Code
    int usr_input;

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for (int i = 0; i < 12; i++) {
        if ((usr_input + i) % 2 != 0) {
            printf("%d\n", usr_input + i);
        }
    }

    // End
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra