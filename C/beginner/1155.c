// https://judge.beecrowd.com/pt/problems/view/1155
// Sequência S

// Libraries
#include <stdio.h>

// Main
int main(){

    // Starting variables
    double num, sum;
    sum = 1.0;

    // Iterating
    for(int i = 2; i <=100; i++){
        num = 1.0 / i;
        sum += num;
    }

    // Showing
    printf("%.2lf\n", sum);

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra