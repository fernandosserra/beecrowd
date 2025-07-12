// https://judge.beecrowd.com/pt/problems/view/1864
// Nossos Dias Nunca Voltarão

// Libraries
#include <stdio.h>
#include <string.h>

// Main
int main(){
    
    int usrInput;
    char message[] = "LIFE IS NOT A PROBLEM TO BE SOLVED";

    scanf("%d", &usrInput);

    for (int i = 0; i < usrInput; i++){
        if(i >= (int)strlen(message)){
            break;
        }
        printf("%c", message[i]);
    }
    printf("\n");

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra