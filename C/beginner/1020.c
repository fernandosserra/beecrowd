/*Including libs*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    int usr_days, usr_years, usr_months;

    /*Requesting values to user*/
    scanf("%d", &usr_days);

    /*Doing the calculations*/
    usr_years = usr_days / 365;
    usr_days %= 365;
    usr_months = usr_days / 30;
    usr_days %= 30;

    /*Showing results*/
    printf("%d ano(s)\n", usr_years);
    printf("%d mes(es)\n", usr_months);
    printf("%d dia(s)\n", usr_days); 

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/