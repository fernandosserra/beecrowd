// https://judge.beecrowd.com/pt/problems/view/1174
// Seleção em Vetor I

// Libraries
#include <stdio.h>

// Main function
int main() {

    // Variables
    double usrArray[100];
    int i;

    // Getting inputs
    for (i = 0; i < 100; i++) {
        scanf("%lf", &usrArray[i]);
    }

    // Printing the elements that are less than or equal to 10
    for (i = 0; i < 100; i++) {
        if (usrArray[i] <= 10) {
            printf("A[%d] = %.1lf\n", i, usrArray[i]);
        }
    }

    return 0;
}

// By: Fernando Serra
// https:// github.com/fernandosserra