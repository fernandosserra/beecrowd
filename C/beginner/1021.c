/*Includes*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    int notes[] = {10000, 5000, 2000, 1000, 500, 200};
    int coins[] = {100, 50, 25, 10, 5, 1};
    int amnt_notes, amnt_coins;
    

    /*Requesting values to user*/
    scanf("%d.%d", &amnt_notes, &amnt_coins);

    /*Doing the calculations*/
    amnt_notes = (amnt_notes * 100) + amnt_coins;

    /*Printing the notes*/
    printf("NOTAS:\n");
    for(int i = 0; i < 6; i++){
        printf("%d nota(s) de R$ %.2lf\n", amnt_notes / notes[i], notes[i]/100.0);
        amnt_notes %= notes[i];
    }

    /*Stamping coins*/
    printf("MOEDAS:\n");
    for(int i = 0; i < 6; i++){
        printf("%d moeda(s) de R$ %.2lf\n", amnt_notes / coins[i], coins[i]/100.0);
        amnt_notes %= coins[i];
    }    

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/

/*For this code in C, I needed to look for help. I didn't understand the 
conversion from integer to floating point at the end of the for loop. 
In python it's easier.*/