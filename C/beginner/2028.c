// https://judge.beecrowd.com/pt/problems/view/2028
// Sequência de Sequência

// Libraries
#include <stdio.h>

// Main
int main(){

    int usrInput, caseCount;

    while (scanf("%d", &usrInput) != EOF)
    {
        int counter = 1;

        printf("Caso %d: ", caseCount + 1);

        if (usrInput == 0){
            printf("%d numero\n", counter);
        }
        else {
            counter += (usrInput * (usrInput + 1)) / 2;
            printf("%d numeros\n", counter);            
        }

        printf("0");

        for (int i = 1; i <= usrInput; i++){
            for (int j = 0; j < i; j++){
                printf(" %d", i);
            }            
        }

        printf("\n");
        caseCount++;
    }
    
    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra