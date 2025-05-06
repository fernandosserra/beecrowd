// https://judge.beecrowd.com/pt/problems/view/1149
// Somando Inteiros Consecutivos

// Libraries
#include <stdio.h>

#include <stdio.h>

// Starting Code
int main() {
    
    int usr_input1, usr_input2, sum = 0;

    // Getting first number
    scanf("%d", &usr_input1);

    // Testing second number
    do {
        scanf("%d", &usr_input2);
    } while (usr_input2 <= 0);

    // Doing the math
    for (int i = 0; i < usr_input2; i++) {
        sum += usr_input1 + i;
    }

    // Showing results
    printf("%d\n", sum);
    
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra