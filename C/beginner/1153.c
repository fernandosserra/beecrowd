// https://judge.beecrowd.com/pt/problems/view/1153
// Fatorial Simples

// Libraries
#include <stdio.h>

// Main
int main(){
    int usr_input, control1, fatorial;    

    scanf("%d", &usr_input);
    fatorial = 1;
    control1 = usr_input;

    while(control1 > 1){
        fatorial = fatorial * control1;
        control1--;
    }
    
    printf("%d\n", fatorial);

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra