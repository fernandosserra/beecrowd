// https://judge.beecrowd.com/pt/problems/view/1052
// Mês

// Libraries
#include <stdio.h>

// Main
int main (){
    // Starting code and variables
    int usr_input;

    // Scanning values
    scanf("%d", &usr_input);

    // Testing conditions and showing results
    switch (usr_input){
        case 1:
            printf("January\n");
            break;

        case 2:
            printf("February\n");
            break;

        case 3:
            printf("March\n");
            break;

        case 4:
            printf("April\n");
            break;

        case 5:
            printf("May\n");
            break;

        case 6:
            printf("June\n");
            break;

        case 7:
            printf("July\n");
            break;

        case 8:
            printf("August\n");
            break;

        case 9:
            printf("September\n");
            break;

        case 10:
            printf("October\n");
            break;

        case 11:
            printf("November\n");
            break;

        case 12:
            printf("December\n");
            break;

        default:
            printf("Error\n");
            break;

    }

}

// By Fernando Serra
// https://github.com/fernandosserra