// https://judge.beecrowd.com/pt/problems/view/1858
// A Resposta de Theon

// Libraries
#include <stdio.h>
#include <stdio.h> // For input/output operations

// Main, where the magic happens!
int main(){
    int people; // Number of people, the 'N' of the problem!

    // Read the number of people.
    scanf("%d", &people);

    int min_guess;
    
    int min_index = 0; // I'll initialize with 0, because in C, arrays start at 0!

    
    for (int i = 0; i < people; i++){
        int current_guess; 
        scanf("%d", &current_guess); 

        
        if (i == 0){
            min_guess = current_guess; 
            min_index = i + 1; 
        }
        
        else if (current_guess < min_guess){
            min_guess = current_guess; 
            min_index = i + 1;
        }
    }
    
    printf("%d\n", min_index);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra