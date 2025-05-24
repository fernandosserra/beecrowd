/*https://judge.beecrowd.com/pt/problems/view/1047*/
/*Libraries*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variables*/
    int start_hour, start_minute, end_hour, end_minute;
    int control_start, control_final, hour_present, minute_present;

    /*Scanning values*/
    scanf("%d %d %d %d", &start_hour, &start_minute, &end_hour, &end_minute);

    /*Calculating*/
    control_start = start_hour * 60 + start_minute;
    control_final = end_hour * 60 + end_minute;
    

    /*Testing conditions and finding results*/
    if (control_final <= control_start){
        control_final += 24 * 60;
    }

    hour_present = (control_final - control_start) / 60;    
    minute_present = (control_final - control_start) % 60;

    /*Showing results*/
    printf("O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n", hour_present, minute_present);

    /*Ending Code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/