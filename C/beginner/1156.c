// https://judge.beecrowd.com/pt/problems/view/1156
// Sequência S II

// Libraries
#include <stdio.h>

// Main
int main(){

    // Declaring Variables
    double num, den, sum;
    
    // Starting variables
    sum = 1.0;
    num = 1.0;
    den = 1.0;
    
    // Iterating
    for(int i = 1; i <= 39; i += 2){
        num += 2;
        den *= 2;
        sum += (num / den);

    }

    // Showing
    printf("%.2lf\n", sum);

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra