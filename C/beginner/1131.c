// https://judge.beecrowd.com/pt/problems/view/1131
// Grenais

// Libraries
#include <stdio.h>

// Main Function
int main(){
    // Declarations
    int p_inter, p_gremio;
    int v_inter, v_gremio, empates;
    int repeat, v_repeat;

    // Initializations
    v_inter = 0;
    v_gremio = 0;
    empates = 0;

    // Starting repeat instance
    repeat = 1;
    v_repeat = 0;

    // Iterating
    while(repeat == 1){
        // input values
        scanf("%d %d", &p_inter, &p_gremio);
        if (p_inter > p_gremio){
            v_inter += 1;
        } else if (p_inter < p_gremio){
            v_gremio += 1;
        } else {
            empates += 1;
        }

        // input repeat
        while(v_repeat == 0){
            printf("Novo grenal (1-sim 2-nao)\n");
            scanf("%d", &v_repeat);
            if (v_repeat == 1){
                v_repeat = 0;
                break;            
            } else if (v_repeat != 1){
                v_repeat = 1;
                repeat = 0;
                break;
            }
            
        }
    }

    // Showing results
    printf("%d grenais\n", v_inter + v_gremio + empates);
    printf("Inter:%d\n", v_inter);
    printf("Gremio:%d\n", v_gremio);
    printf("Empates:%d\n", empates);
    if (v_inter > v_gremio){
        printf("Inter venceu mais\n");
    } else if (v_inter < v_gremio){
        printf("Gremio venceu mais\n");
    } else {
        printf("Nao houve vencedor\n");
    }  

    
    // Ending Code    
    return 0;
}

// By Fernando Serra
// https://github.com/fernandoserra