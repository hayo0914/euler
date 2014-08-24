#include <stdio.h>

int isPalindrome(long n) 
{
    long p = n;
    long r = 0;
    while (p > 0) {
        r *= 10;
        r += p % 10;
        p /= 10;
    }
    return n == r ? 1 : 0;
}

int main(int argc, char** argv) 
{
    int max = -1;
    for (int i = 100; i < 1000; i++) {
        for (int j = 100; j < 1000; j++) {
            long x = (long)i*j;
            if (max > x || !isPalindrome(x)) {
                continue;
            }
            max = x;
        }
    }
    printf("the answer is %d\n", max);
    return 0;
}
