#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
int main(int argc, char *argv[]){
    int n = atoi(argv[1]);
    int* list;
    list = (int*)malloc(sizeof(int) * n);
    for(int i =1; i < n; i++){
        list[i] = 0;
    }
    int list_len = 1;
    int num = 3;
    list[0] = 2;
    for(int i = 1; i <= n - 1; i++){
        bool cut = false;
        for(int k = 0; list_len >= k; k++){
            if( num % list[k] == 0){
                cut = true;
            };
        };
        if( cut == true ){
            i--;
        }else{
            list[i] = num;
            list_len++;
        };
        num += 2;
    };
    printf("%d\n",list[ n - 1]);
    return 0;
    free(list);
}
