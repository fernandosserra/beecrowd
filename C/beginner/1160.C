// https://judge.beecrowd.com/pt/problems/view/1160
// Crescimento Populacional

// Libraries
#include <stdio.h>
#include <math.h>

// Main
int main() {

    // Variables
    int testCases, populationA, populationB, years;
    double growthA, growthB;

    // Starting Years
    years = 0;
    
    // Getting Test Cases
    scanf("%d", &testCases);

    // Iterating
    for (int i = 0; i < testCases; i++) {
        // Getting Input
        scanf("%d %d %lf %lf", &populationA, &populationB, &growthA, &growthB);      

        // Iterating between years
        while (populationA <= populationB && years < 101){
            populationA += floor((populationA * growthA)/100);
            populationB += floor((populationB * growthB)/100);
            years++;
        }

        // Output & Checking time
        if (years > 100) {
            printf("Mais de 1 seculo.\n");
        }
        else {
            printf("%d anos.\n", years);
        }

        // Reseting years
        years = 0;
        
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra