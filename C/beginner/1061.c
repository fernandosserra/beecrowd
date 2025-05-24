// https://judge.beecrowd.com/pt/problems/view/1061
// Tempo de um evento

// Libraries
#include <stdio.h>

// Function to convert days, hours and minutes to seconds
int convert(int days, int hours, int minutes, int seconds) {
    return (days * 24 * 60 * 60) + (hours * 60 * 60) + (minutes * 60) + seconds;
}

// Main Function
int main(){
    // Variables
    int s_day, s_hour, s_minute, s_second;
    int e_day, e_hour, e_minute, e_second;

    // Scanning values
    scanf("Dia %d\n", &s_day);
    scanf("%d : %d : %d\n", &s_hour, &s_minute, &s_second);
    scanf("Dia %d\n", &e_day);
    scanf("%d : %d : %d\n", &e_hour, &e_minute, &e_second);

    // Doing the calcs to find time
    int starting = convert(s_day, s_hour, s_minute, s_second);
    int ending = convert(e_day, e_hour, e_minute, e_second);
    int duration = ending - starting;

    // Showing results
    printf("%d dia(s)\n", duration / (24 * 60 * 60));
    duration %= 24 * 60 * 60;
    printf("%d hora(s)\n", duration / (60 * 60));
    duration %= 60 * 60;
    printf("%d minuto(s)\n", duration / 60);
    duration %= 60;
    printf("%d segundo(s)\n", duration);

    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra
/* Special thanks to xTecna on https://github.com/xTecna who made the original code an gave me ideas
to made this code. */