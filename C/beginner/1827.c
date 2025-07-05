// https://judge.beecrowd.com/pt/problems/view/1827
// Matriz Quadrada IV

// Libraries
#include <stdio.h>

// Main
int main() {
    int mSize; // Taking the matrix size

    // Main loop until EOF
    while (scanf("%d", &mSize) != EOF) {
        int rows, columns; // Iteration variables

        int startInner = mSize / 3; // To internal matrix of 1's
        int endInner = mSize - 1 - (mSize / 3); // To internal matrix of 1's. It's his superior limit.

        // To fill matrix lines
        for (rows = 0; rows < mSize; rows++) {
            // to fill columns
            for (columns = 0; columns < mSize; columns++) {
                // Central Point
                if (rows == (mSize / 2) && columns == (mSize / 2)) {
                    printf("4"); // Prints 4 on central point
                }
                // Internal Matrix
                else if (rows >= startInner && rows <= endInner && 
                    columns >= startInner && columns <= endInner){
                    printf("1"); // Prints 0 on external positions
                }
                // Main Diagonal
                else if (rows == columns) {
                    printf("2"); // Prints 2 if is on main diagonal
                }
                // Secondary Diagonal
                else if (rows == (mSize - 1) - columns){
                    printf("3"); // Prints 3 on sec diagonal
                }
                // Prints 0 on external positions, the numbers that don't satisfy previous conditions
                else {
                    printf("0"); 
                }
            }
            printf("\n"); // Breaking the Lawne!
        }
        printf("\n"); // New line after each matrix.
    }
    return 0; // Goodbye and good luck!
}

// By: Fernando Serra
// https://github.com/fernandosserra
