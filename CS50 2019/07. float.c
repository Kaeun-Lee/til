#include <cs50.h>
#include <stdio.h>

int main(void)
{
    float price = get_float("What's the price?\n");
    printf("Your total is %.2f.\n", price * 1.0625); // 세금을 포함한 총액을 계산하기 위해 가격의 106.25%를 계산
}
