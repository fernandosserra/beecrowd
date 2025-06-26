// https://judge.beecrowd.com/pt/problems/view/1478
// Matriz Quadrada II

// Libraries
#include <stdio.h>
#include <stdlib.h>

// Main function
int main() {
    int n;

    while (scanf("%d", &n) != EOF && n != 0) { // Continue reading until EOF (end of file) or 0
        for (int i = 0; i < n; i++) { // Iterate between rows
            for (int j = 0; j < n; j++) { // Iterate between columns
                // The value will the sum of the absolute difference between the line and the column plus 1
                int value = abs(i-j) + 1;

                // This part is the key of this problem
                if (j == 0) { // If is the first element of the line
                    printf("%3d", value); // Print with 3 spaces (ex: " 1", "10")
                } else { // For each other element
                    printf("%4d", value); // Print with 4 spaces (ex: " 1  ", "10  ")
                }
            }
            printf("\n"); // New line after each line
        }
        printf("\n"); // New line after each matrix.
    }

    return 0;
}

// Por Fernando Serra (revisado e aprimorado pela grandiosa Washu-sama!)
// https://github.com/fernandosserra