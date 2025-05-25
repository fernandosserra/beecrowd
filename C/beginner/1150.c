// https://judge.beecrowd.com/pt/problems/view/1150
// Ultrapassando Z

// Libraries
#include <stdio.h>

// Main
int main (){
    // Declaring Variables
    int usr_input1, usr_input2, sum, counter;
    
    // Starting variables
    usr_input1 = 0;
    usr_input2 = 0;
    counter = 1;


    // Scanning user input
    scanf("%d", &usr_input1);

    // Starting sum
    sum = usr_input1;

    do {
        scanf("%d", &usr_input2);
    }
    while (usr_input2 <= usr_input1);

    // Doing the math
    do{
        usr_input1++;
        sum += usr_input1;        
        counter++;
    }
    while (sum <= usr_input2);

    // Showing results
    printf("%d\n", counter);

    // Ending Code
    return 0;
}

// By Fernando Sera
// https://github.com/fernandosserra