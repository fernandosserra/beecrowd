// https://judge.beecrowd.com/pt/problems/view/1133
// Resto da Divisão

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Variables
    int x, y, temp;

    // Scanning
    scanf("%d", &x);
    scanf("%d", &y);

    // Testing conditions
    if (x > y){
        temp = x;
        x = y;
        y = temp;
    }

    // Iterating
    for(int i = x + 1; i < y; i++){

        if(i % 5 == 2 || i % 5 == 3){
            printf("%d\n", i);
        }
    }

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra