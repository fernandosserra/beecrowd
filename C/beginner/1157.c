// https://judge.beecrowd.com/pt/problems/view/1157
// Divisores I

// Libraries
#include <stdio.h>

// Main
int main(){
    
    // Variables
    int usr_input;

    // Getting Input
    scanf("%d", &usr_input);

    // Iterating
    for(int i = 1; i <= usr_input; i++){
        if (usr_input % i == 0){
            printf("%d\n", i);
        }
    }

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra