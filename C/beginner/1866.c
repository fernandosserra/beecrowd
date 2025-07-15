// https://judge.beecrowd.com/pt/problems/view/1866
// Conta

// Libraries
#include <stdio.h>

// Main
int main(){

    int usrInput, usrCases, result;

    usrCases = 0;
    scanf("%d", &usrCases);

    for (int i = 0; i < usrCases; i++){
        scanf("%d", &usrInput);

        if (usrInput >= 1 && usrInput <= 100){
            if (usrInput % 2 == 0){
                result = 0;
            }
            else {
                result = 1;
            }
            printf("%d\n", result);
        }        
        else {
            printf("Invalid input.");
        }
    }

    return 0;    
}

// By: Fernando Serra
// https://github.com/fernandosserra