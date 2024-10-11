// https://judge.beecrowd.com/pt/problems/view/1118
// Várias notas com validação

// Libs
#include <stdio.h>

// Main function
int main(){
    // Starting code and variables
    double grade1, grade2, media;
    int repeat = 1;
    int vRepeat = 1;

    // Starting code
    while(repeat == 1){
        grade1 = -1;
        grade2 = -1;

        // Reading Grade 1
        while (grade1 < 0 || grade1 > 10){
            scanf("%lf", &grade1);
            if (grade1 < 0 || grade1 > 10){
                printf("nota invalida\n");
            }
        }

        // Reading Grade 2
        while (grade2 < 0 || grade2 > 10){
            scanf("%lf", &grade2);
            if (grade2 < 0 || grade2 > 10){
                printf("nota invalida\n");
            }
        }

        // Calculating Media    
        media = (grade1 + grade2) / 2;

        // Showing Media
        printf("media = %.2lf\n", media);

        // Reading Repeat
        printf("novo calculo (1-sim 2-nao)\n");
        while(1){
            scanf("%d", &vRepeat);
            if(vRepeat == 1){
                break;
            } else if(vRepeat == 2){
                repeat = 0;
                break;                
            } else {
                printf("novo calculo (1-sim 2-nao)\n");
            }
        }
    }

    // Ending code
    return 0;
}


// By Fernando Serra
// https://github.com/fernandosserra