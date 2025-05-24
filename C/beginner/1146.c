// https://judge.beecrowd.com/pt/problems/view/1146
// Sequências Crescentes

// Libraries
#include <stdio.h>

int main(){
    // Starting Code
    int usr_input;
    
    // Iterating
    do {        
        scanf("%d", &usr_input);        
        for (int i = 1; i <= usr_input; i++){
            if (i < usr_input){
                printf("%d ", i);                
            } else {
                printf("%d\n", i);
            }
        }
    } while (usr_input != 0);    
    
    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra