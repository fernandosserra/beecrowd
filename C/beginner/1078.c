// https://judge.beecrowd.com/pt/problems/view/1078
// Tabuada

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting Code
    int user_input;

    // Scanning input
    scanf("%d", &user_input);

    // Iterating
    for (int i = 1; i <= 10; i++){
        printf("%d x %d = %d\n", user_input, i, user_input * i);
    }

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra