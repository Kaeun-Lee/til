#include <stdio.h>

// 1. 변수 할당, 1씩 증가
int main(void)
{
    int counter = 0;
    // counter += 1;
    counter ++;
}

// 2. 조건문
// a. if 연산자
int main(void)
{
    if (x < y)
    {
        printf("x is less than y\n");
    }
    else if (x > y)
    {
        printf("x is greater than y\n");
    }
    else
    {
        printf("x is equal to y\n");
    }
}

// b. switch 연산자 : 조건식의 결과값에 따라 매칭되는 case의 코드를 실행
switch (x)
{
    case 1:
        printf("A\n");
        break;
    case 2:
        printf("B\n");
        break;
    default:
        printf("C\n");
}

// c. 3항 연산자 : 식이 참이면 : 기호 왼편의 값으로 계산되고, 거짓이면 오른편의 값으로 계산
int y = (x > 3) ? 2 : 1;
// 위 식에  x > 3이 참이면 y는 2가 되고, 그렇지 않으면 1이 됨
