/*Includes*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variable declaration and initialization*/
    int time_spent, avg_speed;
    double necessary_fuel;

    /*Requesting values to user*/
    scanf("%d", &time_spent);
    scanf("%d", &avg_speed);

    /*Finding necessary fuel*/
    necessary_fuel = (time_spent * avg_speed) / 12.0;

    /*Printing necessary fuel*/
    printf("%.3lf\n", necessary_fuel);

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/