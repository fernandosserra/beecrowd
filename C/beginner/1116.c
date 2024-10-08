// https://judge.beecrowd.com/pt/problems/view/1116
// Dividindo X por Y

// Libraries
#include <stdio.h>

// Main function
int main(){
    // Variables
    double X, Y;
    int usr_iterations;

    // Scanning
    scanf("%d", &usr_iterations);

    // Iterating
    for (int i = 0; i < usr_iterations; i++){
        scanf("%lf %lf", &X, &Y);
        if (Y == 0){
            printf("divisao impossivel\n");
        } else {
            printf("%.1lf\n",  X / Y);
        }
        
    }

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra