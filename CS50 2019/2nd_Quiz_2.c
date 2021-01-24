#include <cs50.h>
#include <stdio.h>

int main(void)
{
    int target = get_int("목표 금액은 얼마인가요? : ");
    printf("예금액 %i원에 따라 1년 만기 시 받게 되는 금액은 %.0f원입니다.\n", target, target * 1.012);
}
