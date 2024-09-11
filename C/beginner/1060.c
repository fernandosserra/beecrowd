// https://judge.beecrowd.com/pt/problems/view/1060
// Números Positivos

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Variables
    int counter, positives;
    double usr_input;

    counter = 0;
    positives = 0;

    // Iterating and scanning values
    while (counter < 6){
        scanf("%lf", &usr_input);

        if (usr_input > 0){
            positives++;
        }
        counter++;
    }

    // Showing results
    printf("%d valores positivos\n", positives);

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra