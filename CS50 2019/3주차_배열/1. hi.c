#include <stdio.h>

int main(void)
{
    char c1 = 'H';
    char c2 = 'I';
    char c3 = '!';
    // printf("%c %c %c\n", c1, c2, c3); // (output : H I !)
    // printf("%i %i %i\n", (int) c1, (int) c2, (int) c3);   // (int) : 형변환(Casting), 즉 하나의 자료형을 다른 종류로 바꾸는 행위
    printf("%i %i %i\n", c1, c2, c3); // 하지만 (int)를 안해줘도 결과는 동일(output : 72 73 33)
}
