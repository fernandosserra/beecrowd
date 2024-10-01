// https://judge.beecrowd.com/pt/problems/view/1099
// Soma de ímpares consecutivos II

// Libraries
#include <stdio.h>

int main() {
    // Starting variables
    int n, x, y, odd_amount;
    
    // Scan number of test cases
    scanf("%d", &n);

    // Loop for each test case
    for (int i = 0; i < n; i++) {
        // Scan X and Y
        scanf("%d %d", &x, &y);

        // Ensure X is less than or equal to Y
        if (x > y) {
            int temp = x;
            x = y;
            y = temp;
        }

        odd_amount = 0;  // Reset odd amount for each test case
        for (int j = x + 1; j < y; j++) {
            if (j % 2 != 0) {
                odd_amount += j;
            }
        }

        printf("%d\n", odd_amount);
    }

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra