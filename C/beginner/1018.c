/*Including stdio*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    int amnt;

    /*Requesting amount to user*/
    scanf("%d", &amnt);

    /*Finding the notes*/
    printf("%d\n", amnt);
    printf("%d nota(s) de R$ 100,00\n", amnt / 100);
    amnt %= 100;
    printf("%d nota(s) de R$ 50,00\n", amnt / 50);
    amnt %= 50;
    printf("%d nota(s) de R$ 20,00\n", amnt / 20);
    amnt %= 20;
    printf("%d nota(s) de R$ 10,00\n", amnt / 10);  
    amnt %= 10;
    printf("%d nota(s) de R$ 5,00\n", amnt / 5);
    amnt %= 5;
    printf("%d nota(s) de R$ 2,00\n", amnt / 2);
    amnt %= 2;
    printf("%d nota(s) de R$ 1,00\n", amnt / 1);

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/