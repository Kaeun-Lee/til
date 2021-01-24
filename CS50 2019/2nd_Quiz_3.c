#include <cs50.h>
#include <stdio.h>
#include <string.h>

int main(void)
{
    string day = get_string("요일을 입력하세요: ");
    if (strcmp(day, "월요일") == 0)
    {
        printf("%s: 청국장\n", day);
    }
    else if (strcmp(day, "화요일") == 0)
    {
        printf("%s: 비빔밥\n", day);
    }
    else if (strcmp(day, "수요일") == 0)
    {
        printf("%s: 된장찌개\n", day);
    }
    else if (strcmp(day, "목요일") == 0)
    {
        printf("%s: 칼국수\n", day);
    }
    else if (strcmp(day, "금요일") == 0)
    {
        printf("%s: 냉면\n", day);
    }
    else if (strcmp(day, "토요일") == 0)
    {
        printf("%s: 소불고기\n", day);
    }
    else if (strcmp(day, "일요일") == 0)
    {
        printf("%s: 오삼불고기\n", day);
    }
    else
    {
        printf("요일을 다시 입력해주세요\n");
    }
}
