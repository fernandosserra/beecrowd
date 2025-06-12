// https://judge.beecrowd.com/pt/problems/view/1179
// Preenchimento de Vetor IV

// Libraries
#include <stdio.h>

// Main function
int main() {
    int entries[15], even[5], odd[5];
    int evenIndex, oddIndex, i, j;

    // Initialize indices for even and odd arrays
    evenIndex = 0;
    oddIndex = 0;
    i = 0;
    
    // Read 15 integers

    for(i = 0; i < 15; i++) {
        scanf("%d", &entries[i]);
    }

    // Distribute the integers into even and odd arrays
    for (i = 0; i < 15; i++) {
        if (entries[i] % 2 == 0) {  // Check if the number is even
            even[evenIndex++] = entries[i];
            if (evenIndex == 5) {
                for (j = 0; j < 5; j++) {
                    printf("par[%d] = %d\n", j, even[j]);
                }
                evenIndex = 0; // Reset index after printing
            }
        } else {
            odd[oddIndex++] = entries[i];
            if (oddIndex == 5) {
                for (j = 0; j < 5; j++) {
                    printf("impar[%d] = %d\n", j, odd[j]);
                }
                oddIndex = 0; // Reset index after printing
            }
        }
    }
    
    // Printing remaining odd numbers if there are any
    for (j = 0; j < oddIndex; j++) {
        printf("impar[%d] = %d\n", j, odd[j]);
    }
    
    // Printing remaining even numbers if there are any
    for (j = 0; j < evenIndex; j++) {
        printf("par[%d] = %d\n", j, even[j]);
    }    

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra