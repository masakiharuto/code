#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
int main() {
    int n = 16000000;
    int count = 0;
    bool *prime = (bool *)malloc(sizeof(bool) * n);
    for (int i = 0; i <= n; i++){
        prime[i] = true;
    }

    for (int p = 2; p * p <= n; p++) {
        if (prime[p]) {
            for (int s = p * p; s <= n; s += p)
                prime[s] = false;
        }
    }

    for (int k = 2; k <= n; k++){
        if (prime[k]){
            count++;
            if (count == 1000000){
                printf("%d ", k);
            }
        }
    }
    return 0;
}
