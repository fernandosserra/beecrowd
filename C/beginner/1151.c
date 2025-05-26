    // https://judge.beecrowd.com/pt/problems/view/1151
    // Fibonacci Fácil

    // Libraries
    #include <stdio.h>

    // Main Function
    int main(){
        
        // Variables
        int usr_input, control_1, control_2, aux_value;

        control_1 = 0;
        control_2 = 1;
        aux_value = 0;

        // Getting values
        scanf("%d", &usr_input);

        // Testing input
        if (usr_input == 0){
            return 0;
        }    
        // First Print
        printf("%d ", aux_value);
        aux_value = control_1 + control_2;

        // Iterating
        for (int i = 1; i < usr_input; i++){
                        
            if (i == usr_input - 1){
                printf("%d\n", aux_value);
            } else {
                printf("%d ", aux_value);
                aux_value = control_1 + control_2;        
                control_1 = control_2;
                control_2 = aux_value;
            }                
        }
        
        return 0;

    }

    // By Fernando Serra & Franklin Pereira
    // https://github.com/fernandosserra
    // https://github.com/Hyuse98