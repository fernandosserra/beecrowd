// https://judge.beecrowd.com/pt/problems/view/1142
// PUM

// Libraries
#include <stdio.h>

// Main
int main(){
    // Starting code, declarating variables
    int usr_input;
    int aPUM1, aPUM2, aPUM3;

    // Initializing variables
    aPUM1 = 1;
    aPUM2 = 2;
    aPUM3 = 3;

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for(int i = 0; i  < usr_input; i++){
        // Showing PUM
        printf("%d %d %d PUM\n", aPUM1, aPUM2, aPUM3);
        // Incrementing variables
        aPUM1 += 4;
        aPUM2 += 4;
        aPUM3 += 4; 
    }


    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandoserra