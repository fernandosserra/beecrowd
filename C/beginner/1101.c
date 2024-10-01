// https://judge.beecrowd.com/pt/problems/view/1101
// Sequência de Números e Soma

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Starting Code
    int flag = 0;
    int usr_input1, usr_input2;
    int temp_storage, sum;

    // Iteration
    while (flag == 0) {
        scanf("%d %d", &usr_input1, &usr_input2);
        if (usr_input1 <= 0 || usr_input2 <= 0) {
            flag = 1;
            break;
        }
        
        if (usr_input1 > usr_input2) {
            temp_storage = usr_input1;
            usr_input1 = usr_input2;
            usr_input2 = temp_storage;
        }

        for (int i = usr_input1; i <= usr_input2; i++) {
            printf("%d ", i);
            sum += i;
        }

        printf("Sum=%d\n", sum);
        sum = 0;
    }


    // Ending Code
    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra