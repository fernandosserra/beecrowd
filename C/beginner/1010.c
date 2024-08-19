/*Including Libraries*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    int piece_code1, piece_code2, quantity1, quantity2;
    double price1, price2, total_value;

    /*Requesting values to user*/
    scanf("%d" "%d" "%lf", &piece_code1, &quantity1, &price1);
    scanf("%d" "%d" "%lf", &piece_code2, &quantity2, &price2);
    
    /*Doing the calculations*/
    total_value = (quantity1 * price1) + (quantity2 * price2);

    /*Showing results. For some reason, beecrowd doesn't accept my solution with for. Sad... :( */
    printf("VALOR A PAGAR: R$ %.2lf\n", total_value);

    /*Ending Algorithm*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/