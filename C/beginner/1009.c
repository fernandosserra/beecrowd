/*Including Libraries*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    char name[50];
    double base_salary, final_salary, sales, comission;

    /*Requesting values to user*/
    scanf("%s", name);
    scanf("%lf", &base_salary);
    scanf("%lf", &sales);

    /*Doing the calculations*/
    comission = (sales * 0.15);
    final_salary = base_salary + comission;

    /*Showing results*/
    printf("TOTAL = R$ %.2f\n", final_salary);

    /*Ending algorithm*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/