#include<stdio.h>
#include<string.h>
int main(void) {
    char message[30];
    for(int i = 1;i<=20;i++){
        sprintf(message,"%d",i);
        if(i%3 == 0){
            strcat(message, "  foo");
        };
        if(i%5 == 0){
            strcat(message, "  bar");
        };
        printf("%s\n",message);
    };
    return 0;
}
