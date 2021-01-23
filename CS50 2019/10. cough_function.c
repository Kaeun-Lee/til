#include <stdio.h>

void cough(int n);  // '함수 프로토타입', 밑에 cough 함수가 있음을 명시

int main(void)
{
    cough(3);
}


void cough(int n)   // 함수 세부 정의
{
    for (int i = 0; i < n; i++)
    {
        printf("cough\n");
    }
}
