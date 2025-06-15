// https://judge.beecrowd.com/pt/problems/view/1182
// Coluna na Matriz

// Libs
#include <stdio.h>

// Constants
#define M_SIZE 12

// Function prototypes
double ourSum(double matrix[M_SIZE][M_SIZE], int column);
double ourAverage(double matrix[M_SIZE][M_SIZE], int column);

// Main
int main(){

    // Variables
    int indexes, indexes2, column;
    double ourMatrix[M_SIZE][M_SIZE];
    double result = 0.0; // Declaring and initializing result
    char operation;

    // Getting Column number
    scanf("%d", &column);
    // Getting Operation
    scanf(" %c", &operation);

    // Getting Matrix values
    for(indexes = 0; indexes < 12; indexes++){
        for(indexes2 = 0; indexes2 < 12; indexes2++){
            scanf("%lf", &ourMatrix[indexes][indexes2]);
        }
    }

    // Checking operation type
    if (operation == 'S') {
        // If operation is Sum
        result = ourSum(ourMatrix, column);
    } else if (operation == 'M') {
        // If operation is Average
        result = ourAverage(ourMatrix, column);
    }

    // Printing result
    printf("%.1lf\n", result);

    return 0;
}

// Function to calculate the sum of a specific column
double ourSum(double matrix[M_SIZE][M_SIZE], int column) {
    double sum = 0.0;
    for (int i = 0; i < 12; i++) {
        sum += matrix[i][column];
    }
    return sum;
}

// Function to calculate the average of a specific column
double ourAverage(double matrix[M_SIZE][M_SIZE], int column) {
    double sum = ourSum(matrix, column);
    return sum / 12.0; // Since the matrix is 12x12
}

// By: Fernando Serra
// https://github.com/fernandosserra