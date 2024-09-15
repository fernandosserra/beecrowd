// https://judge.beecrowd.com/pt/problems/view/1072
// Intervalo 2

// Libraries
#include <stdio.h>

// Main Function
int main() {
    // Starting code and declarations
    int usr_input, usr_input2;
    int interval_in, interval_out;

    interval_in = 0;
    interval_out = 0;    

    // Scanning user input
    scanf("%d", &usr_input);

    // Iterating
    for (int i = 1; i <= usr_input; i++) {
        scanf("%d", &usr_input2);
        if (usr_input2 >= 10 && usr_input2 <= 20) {            
            interval_in ++;
        } else {
            interval_out ++;
        }
    }

    // Showing results
    printf("%d in\n", interval_in);
    printf("%d out\n", interval_out);

    // Ending code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra