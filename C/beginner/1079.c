// https://judge.beecrowd.com/pt/problems/view/1079
// Médias Ponderadas

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting variables
    int usr_sequences;
    double usr_v1, usr_v2, usr_v3;

    // Asking user for sequences
    scanf("%d", &usr_sequences);

    // Iterating between sequences
    for (int i = 0; i < usr_sequences; i++){
        // Requesting values
        scanf("%lf %lf %lf", &usr_v1, &usr_v2, &usr_v3);
        // Printing result
        printf("%.1lf\n", (usr_v1 * 2 + usr_v2 * 3 + usr_v3 * 5) / 10);

    }
    
    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra