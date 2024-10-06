// https://judge.beecrowd.com/pt/problems/view/1114
// Senha Fixa

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting Variables
    int senha;
    int access_granted = 0;
    
    // Iterating 
    while(access_granted == 0){
        // Ask for a value
        scanf("%d", &senha);
        // Test if the password is correct
        if(senha == 2002){
            access_granted = 1;
            printf("Acesso Permitido\n");
            break;            
        } 
        
        printf("Senha Invalida\n");
        
    }

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra