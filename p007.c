#include <stdio.h>
#include <math.h>

int is_prime(int n) {
    if (n == 2) {
        return 1;
    } else if (n % 2 == 0) {
        return 0;
    }
    int to = (int)sqrt(n);
    int devide = 1;
    while (devide < to) {
        devide += 2;
        if (n % devide == 0) {
            return 0;
        }
    }
    return 1;
}


int main() {

    int found_cnt = 0, number = 1;
    while (found_cnt <= 10000) {
        number++;
        if (is_prime(number)) {
            found_cnt++;
        }
    }
    printf("%d\n", number);
    return;

}
