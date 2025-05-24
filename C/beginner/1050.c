// https://judge.beecrowd.com/pt/problems/view/1050
// DDD

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Variables
    int number;

    // Requesting DDD to user
    scanf("%d", &number);

    // Testing conditions and showing results
    switch (number)
    {
    case 61:
        printf("Brasilia\n");
        break;

    case 71:
        printf("Salvador\n");
        break;

    case 11:
        printf("Sao Paulo\n");
        break;

    case 21:
        printf("Rio de Janeiro\n");
        break;

    case 32:
        printf("Juiz de Fora\n");
        break;

    case 19:
        printf("Campinas\n");
        break;

    case 27:
        printf("Vitoria\n");
        break;

    case 31:
        printf("Belo Horizonte\n");
        break;  
    
    // If DDD is not on the list
    default:
        printf("DDD nao cadastrado\n");
        break;
    }

    // Ending code
    return 0;
}

/*
By Fernando Serra
https://github.com/fernandosserra
*/