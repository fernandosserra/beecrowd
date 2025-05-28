// https://judge.beecrowd.com/pt/problems/view/1154
// Idades

// Libraries
#include <stdio.h>

// Main
int main(){
    // Declaring Variables
    double avg_ages;
    int ages, control, counter;

    // Starting Variables
    ages = 0;
    avg_ages = 0;
    control = 0;
    counter = 0;

    // Iterating
    while(control == 0){
        // Scanning
        scanf("%d", &ages);
        
        // Testing if the typed age is negative
        if(ages < 0){
            // Calculating average
            avg_ages = avg_ages / counter;
            control = 1;
            break;
        } else{
            avg_ages += ages;
            counter++;
            ages = 0;
        }
    }
    
    // Showing Results
    printf("%.2lf\n", avg_ages);

    return 0;
}

// By Fernando Serra & Daiane Bassetti
// https://github.com/fernandosserra
// https://github.com/DaianeBassetti