// https://judge.beecrowd.com/pt/problems/view/1962
// Há muito, muito tempo atrás

// Libraries
#include <stdio.h>

// Main
int main(){
    int CURRENTYEAR = 2015;
    int years, evalYear;

    scanf("%d", &years);


    for (int i = 0; i < years; i++){
        scanf("%d", &evalYear);

        if (evalYear <= CURRENTYEAR){
            if ((CURRENTYEAR - evalYear) == 0){
                printf("1 A.C.\n");
                continue;
            } else{
                printf("%d D.C.\n", (CURRENTYEAR - evalYear));
            }
            
        } else {
            printf("%d A.C.\n", ((evalYear - CURRENTYEAR) + 1));
        }
        
    }


    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra