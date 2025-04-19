#include<stdio.h>
#include <stdbool.h>
int main(void) {
    int list[10] = { 2 };
    int list_len = 1;
    int num = 3;
    for(int i = 1; i <= 9; i++){
        bool div = false;
        for(int k = 0; list_len >= k; k++){
            if( num % list[k] == 0){
                div = true;
            };
        };
        if( div == true ){
            i--;
        }else{
            list[i] = num;
            list_len++;
        };
        num += 2;
    };
    printf("%d\n",list[9]);
    return 0;
}
