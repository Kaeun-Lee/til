#include <stdio.h>

int main(void)
{
    int n = 50;
    printf("%p\n", &n);        // &var, %p : "~의 주소"를 의미하는 연산자 --> 컴퓨터 메모리의 주소를 가리키는 "포인터"를 출력
    printf("%i\n", *&n);       // * : "그 주소로 가줘"라는 의미로, "~의 주소"와 반대의 동작.
}
