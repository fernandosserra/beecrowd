// https://judge.beecrowd.com/pt/problems/view/1541
// Construindo Casas

// Libraries
#include <stdio.h>
#include <math.h> // Required for the sqrt() function

// Function Prototypes
int calculateLandSide(int houseSideA, int houseSideB, int percentage);

// Main
int main(){
    // Variables
    int houseSideA, houseSideB, percentage;

    // A robust way to loop is to check the return value of scanf and the sentinel value.
    while(scanf("%d", &houseSideA) == 1 && houseSideA != 0){
        // Read the other two values for the current case
        scanf("%d %d", &houseSideB, &percentage);
        
        int result = calculateLandSide(houseSideA, houseSideB, percentage);

        printf("%d\n", result);
    }
    return 0;
}

// Function
int calculateLandSide(int houseSideA, int houseSideB, int percentage){
    // The area of the house is A * B.
    // This area is C% of the total land area.
    // houseArea = (percentage / 100.0) * totalLandArea
    // So, totalLandArea = (houseArea * 100.0) / percentage
    double houseArea = houseSideA * houseSideB;
    double totalLandArea = (houseArea * 100.0) / percentage;

    // The land is square, so the side is the square root of the area.
    // The problem asks for the integer part of the side length, which (int) provides by truncation.
    return (int)sqrt(totalLandArea);
}

// By: Fernando Serra
// https://github.com/fernandosserra