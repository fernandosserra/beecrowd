/*Including libs*/
#include <stdio.h>

/*Main Function*/
int main(){
    
    /*Variable declaration and initialization*/
    double distance_travelled, total_fuel, average_consumption;
    
    /*Requesting inputs to user*/
    scanf("%lf", &distance_travelled);
    scanf("%lf", &total_fuel);
    
    /*Doing the calculations*/
    average_consumption = distance_travelled / total_fuel;

    /*Putting results into screen*/
    printf("%.3f km/l\n", average_consumption);
    
    /*Ending code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/