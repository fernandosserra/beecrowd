// https://judge.beecrowd.com/pt/problems/view/1186
// Abaixo da Diagonal Secundária

// Libraries
#include <stdio.h>
#include <math.h>

// Constants
#define SIZE 12

// Functions prototypes
double belowSecondDiagonal(double matrix[SIZE][SIZE], char operation);

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

    double result = belowSecondDiagonal(matrix, operation);
    printf("%.1lf\n", result);


    // Ending
    return 0;
}

// Function above2Diagonal
double belowSecondDiagonal(double matrix[][SIZE], char operation) {
    double sum = 0.0;

    // Iterating between matrix to find if the numbers are above the second diagonal
    for (int i = 0; i < SIZE; i++) {
        for (int j = 0; j < SIZE; j++) {
            if (i + j > (SIZE-1)) { // Condition to be below the second diagonal
                sum += matrix[i][j];
            }
        }
    }

    // Returning result if operation is 'S'
    if (operation == 'S') {
        return sum;
    } else { // If operation is 'M'
        return sum / ((SIZE * (SIZE - 1))/2);
    }
}

// By: Fernando Serra
// https://github.com/fernandosserra