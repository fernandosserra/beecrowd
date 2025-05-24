/*Including Libraries*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    int doc, hours;
    float hour_value, total_income;

    /*Requesting values to user*/
    scanf("%d", &doc);
    scanf("%d", &hours);
    scanf("%f", &hour_value);

    /*Doing the calculations*/
    total_income = hours * hour_value;

    /*Showing results*/
    printf("NUMBER = %d\n", doc);
    printf("SALARY = U$ %.2f\n", total_income);

    /*Ending algorithm*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/