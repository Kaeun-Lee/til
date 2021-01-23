// Abstraction and scope
#include <cs50.h>
#include <stdio.h>

int get_positive_int(void);

int main(void)
{
    int i = get_positive_int();
    printf("%i\n", i);
}


// Prompt user for positive integer
int get_positive_int(void)
{
    int n;
    // do-while 루프 : do에서 무조건 한 번은 먼저 수행하게 해주고, while 뒤에 오는 표현이 참일 때 do 뒤에 오는 표현을 반복
    do
    {
        n = get_int("Positive Integer: ");
    }
    while (n < 1);
    return n;
}
