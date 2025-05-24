// https://judge.beecrowd.com/pt/problems/view/1144
// Sequência Lógica

// Libraries
#include <stdio.h>

int main() {
    // Starting Code
    int usr_input;

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for (int i = 1; i <= usr_input; i++) {
        printf("%d %d %d\n%d %d %d\n", i, i * i, i * i * i, i, i * i + 1, i * i * i + 1);
    }


    // Ending Code
    return 0;    
}

// By Fernando Serra
// https://github.com/fernandosserra