// https://judge.beecrowd.com/pt/problems/view/1184
// Abaixo da Diagonal Principal

// Libraries
#include <stdio.h>

// Constants
#define SIZE 12

// Functions prototypes
double aboveDiagonal(double matrix[SIZE][SIZE], char operation);

// Main Function
int main() {
    // Variables
    char operation;
    int index1, index2;
    
    // Matrix
    double matrix[SIZE][SIZE];

    // Getting Operation
    scanf(" %c", &operation);

    // Getting Matrix values
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            scanf("%lf", &matrix[i][j]);
        }
    }

    double result = aboveDiagonal(matrix, operation);
    printf("%.1lf\n", result);


    // Ending
    return 0;
}

// Function aboveDiagonal
double aboveDiagonal(double matrix[][SIZE], char operation) {
    double sum = 0.0;
    int count = 0; // To Count for Average

    // Iterating between matrix to find if the numbers are above the diagonal
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            // Conditon to be in main diagonal is j > i
            if (j < i) {
                sum += matrix[i][j];
                count++;
            }
        }
    }

    // Returning result
    if (operation == 'S') {
        return sum;
    } else { // Se for 'M'
        // Preventing division by 0
        if (count == 0) {
            return 0.0;
        }
        return sum / count;
    }
}

// By: Fernando Serra
// https://github.com/fernandosserra