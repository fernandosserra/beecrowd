// https://judge.beecrowd.com/pt/problems/view/1132
// Múltiplos de 13

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Variables declaration
    int x, y, sw_vb, acum = 0;

    // Scanning values
    scanf("%d %d", &x, &y);

    // Testing interval
    if (x > y){
        sw_vb = x;
        x = y;
        y = sw_vb;
    }

    // Testing conditions
    for (int i = x; i <= y; i++){
        if (i % 13 != 0){
            acum += i;
        }        
    }

    printf("%d\n", acum);


    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra