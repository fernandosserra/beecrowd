// https://judge.beecrowd.com/pt/problems/view/1115
// Quadrante

// Libraries
#include <stdio.h>

int main(){
    // Starting variables
    int flag = 0;
    int x_point, y_point;

    // Scanning values
    while(flag == 0){
        scanf("%d %d", &x_point, &y_point);

        // Testing breakpoint        
        if (x_point == 0 || y_point == 0){
            flag = 1;
            break;
        }

        if (x_point > 0 && y_point > 0){
            printf("primeiro\n");
        } else if (x_point < 0 && y_point > 0){
            printf("segundo\n");
        } else if (x_point < 0 && y_point < 0){
            printf("terceiro\n");
        } else if (x_point > 0 && y_point < 0){
            printf("quarto\n");
        } else {
            break;
        }
    }
    
    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra