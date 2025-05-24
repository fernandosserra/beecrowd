// https://judge.beecrowd.com/pt/problems/view/1074
// Par ou ímpar

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting code and variables;
    int user_interations, usr_input;

    // Scanning user input
    scanf("%d", &user_interations);

    // Iterating
    for (int i = 1; i <= user_interations; i++){
        scanf("%d", &usr_input);
        if (usr_input > 0){
            if (usr_input % 2 == 0){
                printf("EVEN POSITIVE\n");
            } else {
                printf("ODD POSITIVE\n");
            }
        } else if (usr_input < 0){
            if (usr_input % 2 == 0){
                printf("EVEN NEGATIVE\n");
            } else {
                printf("ODD NEGATIVE\n");
            }
        } else {
            printf("NULL\n");
        }
    }

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra