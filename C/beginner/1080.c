// https://judge.beecrowd.com/pt/problems/view/1080
// Maior e Posição

// Libraries
#include <stdio.h>

// Main Function
int main (){
    // Variables
    int usr_inputs[100];
    int usr_highest, usr_highest_pos;

    // Input
    for (int i = 0; i < 100; i++){
        scanf("%d", &usr_inputs[i]);
    }

    usr_highest = 0;
    usr_highest_pos = 0;

    // Processing

    for (int i = 0; i < 100; i++){
        if (usr_inputs[i] > usr_highest){
            usr_highest = usr_inputs[i];
            usr_highest_pos = i;
        }
    }

    // Output
    printf("%d\n", usr_highest);
    printf("%d\n", usr_highest_pos + 1);

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra