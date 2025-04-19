#include<stdio.h>
#include <stdbool.h>
int main(void) {
    int list[10] = { 2 };
    int list_len = 1;
    int num = 3;
    for(int i = 1; i <= 9; i++){
        bool cut = true;
        for(int k = 0; list_len >= k; k++){
            if( num % list[k] == 0){
                cut = false;
            };
        };
        if( cut == false ){
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