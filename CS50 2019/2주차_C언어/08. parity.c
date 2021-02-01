#include <cs50.h>
#include <stdio.h>

// parity : 어떤 숫자가 홀수인지 짝수인
int main(void)
{
    int n = get_int("n: ");

    if (n % 2 == 0)
    {
        printf("even\n");
    }
    else
    {
        printf("odd\n");
    }
}
