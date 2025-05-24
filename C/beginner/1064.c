// https://judge.beecrowd.com/pt/problems/view/1064
// Positivos e Média

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting code and declarations
    int positive_count, general_counter;
    float media, acumulator, usr_input;

    general_counter = 0;
    positive_count = 0;
    acumulator = 0;

    // Iterating
    while (general_counter < 6){
        scanf("%f", &usr_input);

        if (usr_input > 0){
            positive_count++;
            acumulator += usr_input;
        }
        general_counter++;
    }

    // Showing results
    printf("%d valores positivos\n", positive_count);
    media = acumulator / positive_count;
    printf("%.1f\n", media);


    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra