#include <stdio.h>

// 3. 루프
// a. while (true)
int main(void)
{
    while (true)
    {
        printf("hello, world\n");
    }
}

// b. while (조건)
int main(void)
{
    int i = 0;
    while (i < 50)
    {
        printf("hello, world\n");
        i ++;
    }
}

// c. for (변수 초기화; 변수 조건; 변수 증가)
int main(void)
{
    for (int i = 0; i < 50; i++)
    {
        printf("hello, world\n");
    }
}
