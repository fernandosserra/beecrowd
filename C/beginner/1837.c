// https://judge.beecrowd.com/pt/problems/view/1837
// Prefácio

// Libs
#include <stdio.h>
#include <math.h>

// Main
int main(){
    int dividend, divider;
    int rest, quotient;

    scanf("%d %d", &dividend, &divider);
    
    rest = dividend % divider;
    
    if (rest < 0){
        rest += abs(divider);
    }

    quotient = (dividend - rest) / divider;

    printf("%d %d\n", quotient, rest);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra