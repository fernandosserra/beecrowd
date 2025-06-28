// https://judge.beecrowd.com/pt/problems/view/1534
// Matriz 123

// Libraries
#include <stdio.h>

int main() {
    int N; // Taking the matrix size

    // Main loop until EOF
    while (scanf("%d", &N) != EOF) {
        int i, j; // Iteration variables

        // To fill matrix lines
        for (i = 0; i < N; i++) {
            // to fill columns
            for (j = 0; j < N; j++) {
                // Sec. diagonal
                if (i == N - 1 - j) {
                    printf("2"); // Prints 2 on sec diagonal
                }
                // Main Diagonal
                else if (i == j) {
                    printf("1"); // Prints 1 if is on main diagonal
                }
                // For every other position
                else {
                    printf("3"); // prints 3
                }
            }
            printf("\n"); // Breaking the Lawne!
        }
    }
    return 0; // Goodbye and good luck!
}

// By: Fernando Serra
// https://github.com/fernandosserra
