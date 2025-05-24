// https://judge.beecrowd.com/pt/problems/view/1145
// Sequência Lógica II

// Libraries
#include <stdio.h>

int main() {
    // Starting Code
    int usr_input1, usr_input2;
    int cnt = 0;

    // Scanning user input
    scanf("%d %d", &usr_input1, &usr_input2);

    // Iterating
    for (int i = 1; i <= usr_input2; i++) {
        cnt += 1;
        if (cnt == usr_input1) {
            printf("%d\n", i);  // When it reaches X numbers, skip the line
            cnt = 0;
        } else {
            printf("%d ", i);  // Otherwise, print with space.
        }
    }
    // Ending Code
    return 0;    
}

// By Fernando Serra
// https://github.com/fernandosserra