#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cs50.h>

const int NUMBER_OF_GRADES = 9;
const int SCORES[NUMBER_OF_GRADES] = {95, 90, 85, 80, 75, 70, 65, 60, 0};
const char *GRADES[NUMBER_OF_GRADES] = {"A+", "A", "B+", "B", "C+", "C", "D+", "D", "F"};


int main(void)
{
    printf("학점 프로그램\n");
    printf("종료를 원하면 \"999\"를 입력\n");
    printf("[학점 테이블]\n");
    
    printf("점수 : ");
    for (int i = 0; i < NUMBER_OF_GRADES; i++)
    {
        printf("%i\t", SCORES[i]);
    }
    printf("\n");

    printf("학점 : ");
    for (int i = 0; i < NUMBER_OF_GRADES; i++)
    {
        printf("%s\t", GRADES[i]);
    }
    printf("\n");
 
    // 질문 시작
    while (1)
    {
        int my_score = get_int("성적을 입력하세요 (0 ~ 100) : ");
        if (my_score == 999)
        {
            printf("학점 프로그램을 종료합니다.\n");
            break;
        }
        else if (my_score < 0 || my_score > 100)
        {
            printf("** %i 성적을 올바르게 입력하세요. 범위는 0 ~ 100 입니다.\n", my_score);
        }
        else
        {
            for (int i = 0; i < NUMBER_OF_GRADES; i++)
            if (my_score >= SCORES[i])
            {
                printf("학점은 %s 입니다.\n", GRADES[i]);
                break;
            }
                          
        }
    }
}   
