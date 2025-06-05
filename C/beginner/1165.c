// https://judge.beecrowd.com/pt/problems/view/1165
// Números Primos

// Libraries
#include <stdio.h>
#include <math.h>

// Main
int main(){
    // Variables
    int testCases, usrInput;

    // Getting Test Cases
    scanf("%d", &testCases);

    // Iterating
    for (int i = 0; i < testCases; i++){
        scanf("%d", &usrInput);

        int isPrime = 1; // Assuming it is prime

        if (usrInput < 2) {
            isPrime = 0; // Below 2 are not primes
        } else {
            // To check if a number is prime, we only need to check its divisors up to its square root
            for (int j = 2; j <= sqrt(usrInput); j++){
                if (usrInput % j == 0){
                    isPrime = 0;
                    break;
                }
            }
        }

        // Printing our conclusions
        if (isPrime){
            printf("%d eh primo\n", usrInput);
        } else {
            printf("%d nao eh primo\n", usrInput);
        }
    }

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra