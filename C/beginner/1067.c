// https://judge.beecrowd.com/pt/problems/view/1067
// Números Ímpares

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting code and declarations
    int usr_input;

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for (int i = 0; i <= usr_input; i++){
        if (i % 2 != 0){
            printf("%d\n", i);
        }
    }

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra