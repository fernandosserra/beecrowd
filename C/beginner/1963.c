// https://judge.beecrowd.com/pt/problems/view/1963
// O Filme

// Libraries
#include <stdio.h>

// Main
int main (){
    
    float oldPrice, newPrice;
    float increaseAmount;

    scanf("%f %f", &oldPrice, &newPrice);

    if (oldPrice == 0 || newPrice == 0){
        printf("0.00%%\n");
        return 0;
    }

    increaseAmount = (newPrice / oldPrice) - 1;

    printf("%.2f%%\n", increaseAmount * 100);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra