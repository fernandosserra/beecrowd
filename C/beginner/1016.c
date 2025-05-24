/*Inlcudes*/
#include <stdio.h>

/*Main Function*/
int main (){
    /*Variable declaration and initialization*/
    int y = 60;
    int time_to_pass, road_time;

    /*Requesting values to user*/
    scanf("%d", &road_time);

    /*Finding time to pass*/
    time_to_pass = ( y * road_time ) / 30;

    /*Showing results*/
    printf("%d minutos\n", time_to_pass);

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/