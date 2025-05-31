// https://judge.beecrowd.com/pt/problems/view/1158
// Soma de Impares Consecutivos III

// Libraries
#include <stdio.h>

// Main
int main(){
    
    // Variables
    int usr_input1, usr_input2, usr_input3, sum;

    // Scanning number of iterations
    scanf("%d", &usr_input1);

    // Starting sum dump
    sum = 0;

    // Iterating
    for (int i = 0; i < usr_input1; i++){

        // Scanning user input
        scanf("%d %d", &usr_input2, &usr_input3);

        // Adjusting if usr_input2 is even
        if (usr_input2 % 2 == 0){
            usr_input2++;            
        }
        
        // Subiteration
        for (int j = 0; j < usr_input3; j++){

            sum += usr_input2;
            usr_input2 += 2;
        }

        printf("%d\n", sum);
        sum = 0;

    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra