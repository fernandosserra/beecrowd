// https://judge.beecrowd.com/pt/problems/view/1557
// Matriz Quadrada III

// Libraries
#include <stdio.h>
#include <math.h>

// Main function
int main() {
    int n;

    while (scanf("%d", &n) != EOF && n != 0) { // Continue reading until EOF (end of file) or 0
        // Finding max value of our matrix
            long long maxValue = (long long)pow(2, (2 * n - 2));
            int numDigits = 0;

            // This part is the key of this problem
            if (n == 1) { // If n == 1, returns 1
                numDigits = 1;
            } else { // For each other element we count the digits of the greater value
                int tempMax = maxValue;
                while (tempMax > 0) {
                    tempMax /= 10;
                    numDigits++;
                }
            }

            // We need to format print with the number of digits.
            char formatStr[10]; // Buffer to format string
            sprintf(formatStr, "%%%dd", numDigits);
            char formatStrRest[10]; // Buffer to format string.
            sprintf(formatStrRest, " %%%dd", numDigits);
        
        for (int i = 0; i < n; i++) { // Iterate between rows
            for (int j = 0; j < n; j++) { // Iterate between columns
                // Value is 2 powered to the sum of indexes;
                long long value = (long long)pow(2, i + j);

                if (j == 0) { // If is the first element of the line
                    printf(formatStr, value); // Print with the number of digits
                } else { // For each other element
                    printf(formatStrRest, value); // Print with the number of digits
                }
            }
            printf("\n"); // New line after each line
        }
        printf("\n"); // New line after each matrix.
    }

    return 0;
}

// Por Fernando Serra (revisado e aprimorado pela grandiosa Washu-sama!)
// https://github.com/fernandosserra