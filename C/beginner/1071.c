// https://judge.beecrowd.com/pt/problems/view/1071
// Soma de Impares Consecutivos I

// Libraries
#include <stdio.h>

// Main Function
int main() {
    // Starting code and declarations
    int usr_input1, usr_input2;
    int temp_storage, sum;

    // Scanning user input
    scanf("%d", &usr_input1);
    scanf("%d", &usr_input2);

    // Adjusting interval
    if (usr_input1 > usr_input2) {
        temp_storage = usr_input1;
        usr_input1 = usr_input2;
        usr_input2 = temp_storage;
    }

    // Starting sum dump
    sum = 0;    

    // Iterating
    for (int i = usr_input1 + 1; i < usr_input2; i++) {
        if (i % 2 != 0){
            sum += i;
        }        
    }
    
    // Showing results
    printf("%d\n", sum);

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra