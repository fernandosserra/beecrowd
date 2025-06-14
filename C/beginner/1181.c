// https://judge.beecrowd.com/pt/problems/view/1181
// Linha na Matriz

// Libs
#include <stdio.h>

// Function prototypes
double sumLine(int line, double ourMatrix[12][12]);
double averageLine(int line, double ourMatrix[12][12]);

// Main
int main(){

    // Variables
    int line;
    int mLine, mColumn;;
    double ourMatrix[12][12];
    double result = 0.0;
    char operation;

    // Input
    scanf("%d", &line);
    scanf(" %c", &operation);

    // Read the matrix
    for (mLine = 0; mLine < 12; mLine++) {
        for (mColumn = 0; mColumn < 12; mColumn++) {
            scanf("%lf", &ourMatrix[mLine][mColumn]);
        }
    }

    if (operation == 'S') {
        // Sum the line
       result = sumLine(line, ourMatrix);
    } else if (operation == 'M') {
        // Average the line
        result = averageLine(line, ourMatrix);
    }

    // Print the result
    printf("%.1lf\n", result);

    return 0;
}

// Sum function
double sumLine(int line, double ourMatrix[12][12]) {
    double currentSum = 0.0;
    for (int mColumn = 0; mColumn < 12; mColumn++) {
        currentSum += ourMatrix[line][mColumn];
    }
    return currentSum;
}

// Average function
double averageLine(int line, double ourMatrix[12][12]) {
    double currentAverage = sumLine(line, ourMatrix);
    return currentAverage / 12.0;
}


// By: Fernando Serra
// https://github.com/fernandosserra