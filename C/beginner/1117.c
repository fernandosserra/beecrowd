// https://judge.beecrowd.com/pt/problems/view/1117
// Validação de Nota

// Libs
#include <stdio.h>

// Main
int main(){
    // Variables
    float n1, n2, usr_input, media;
    int count = 0;

    // Iterating
    while(count < 2){
        scanf("%f", &usr_input);
        if(usr_input >= 0 && usr_input <= 10){
            if(count == 0){
                n1 = usr_input;
            }else{
                n2 = usr_input;
            }
            count++;
        } else{
            printf("nota invalida\n");
        }
    }

    media = (n1 + n2) / 2;

    // Output
    printf("media = %.2f\n", media);

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra