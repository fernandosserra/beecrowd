// https://judge.beecrowd.com/pt/problems/view/1589
// Bob Conduite

// Libraries
#include <stdio.h>

// Main
int main(){

    // Variables
    int testCases;
    int cable1, cable2;
    int conductor;

    // Input
    scanf("%d", &testCases);

    // Iterating
    for (int i = 0; i < testCases; i++){
        scanf("%d %d", &cable1, &cable2);
        conductor = (cable1) + (cable2);
        printf("%d\n", conductor);
    }

    // Ending
    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra