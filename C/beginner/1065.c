// https://judge.beecrowd.com/pt/problems/view/1065
// Pares entre Cinco Números

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting code and declarations
    int even_counter, general_counter, usr_input;

    general_counter = 0;
    even_counter = 0;

    // Iterating
    while (general_counter < 5){
        scanf("%d", &usr_input);

        if (usr_input % 2 == 0){
            even_counter++;
        }
        general_counter++;
    }

    // Showing results
    printf("%d valores pares\n", even_counter);

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra