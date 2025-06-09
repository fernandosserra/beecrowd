// https://judge.beecrowd.com/pt/problems/view/1176
// Fibonacci em Vetor

// Library
#include <stdio.h>

// Main function
int main(){
    // Variables
    int usrInput1, usrInput2;
    long long int fib[61];

    // Initialize the first two Fibonacci numbers
    fib[0] = 0;
    fib[1] = 1;

    // Calculate Fibonacci numbers up to the 59th
    for (int i = 2; i <= 60; i++){
        fib[i] = fib[i - 1] + fib[i - 2];
    }

    // Getting test cases
    scanf("%d", &usrInput1);

    // Loop through each test case
    for (int i = 0; i < usrInput1; i++){
        // Read the index for Fibonacci number
        scanf("%d", &usrInput2);
        
        // Print the Fibonacci number at the given index
        printf("Fib(%d) = %lld\n", usrInput2, fib[usrInput2]);
    }
    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra