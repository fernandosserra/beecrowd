/*https://judge.beecrowd.com/pt/problems/view/1038*/
/*Including libs*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable initialization*/
    int item, qtt;
    float meals_prices [] = {4.00, 4.50, 5.00, 2.00, 1.50};

    /*Requesting values to user*/
    scanf("%d %d", &item, &qtt);
    
    /*Showing results*/
    printf("Total: R$ %.2f\n", qtt * meals_prices[item - 1]);

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/