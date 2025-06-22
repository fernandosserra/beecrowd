// https://judge.beecrowd.com/pt/problems/view/1189
// Área esquerda

// Libraries
#include <stdio.h>

// Constants
#define SIZE 12

// Functions prototypes
double calculateLeftArea(double matrix[SIZE][SIZE], char operation);

// Main Function
int main() {
    // Variables
    char operation;
    
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

    // Calling the function
    double result = calculateLeftArea(matrix, operation);
    printf("%.1lf\n", result);

    // Ending
    return 0;
}

// Function calculateLeftArea
double calculateLeftArea(double matrix[][SIZE], char operation) {
    double sum = 0.0;
    int count = 0; // Counting Elements to calculate the average

    // Iterating between matrix to find if the numbers are in the specific upper area
    for (int i = 0; i < SIZE; i++) { 
        for (int j = 0; j < SIZE; j++) { 
            // The condition it's i < 5 and j > i and j < (SIZE - 1 - i)
            if (j < i && j < (SIZE - 1 - i) ) { // We keep using size to calculate left area and escalate in future
                sum += matrix[i][j];
                count++; // Increments count only if the condition is true
            }
        }
    }

    // Returning result based on the operation
    if (operation == 'S') {
        return sum;
    } else { // If operation is 'M' (Average or Média in Portuguese)
        return sum / count; 
    }
}

// By: Fernando Serra (With a little revision from Washu-Sama)
// https://github.com/fernandosserra