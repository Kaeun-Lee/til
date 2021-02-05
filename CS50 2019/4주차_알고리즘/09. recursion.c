#include <cs50.h>
#include <stdio.h>


void draw(int h);

int main(void){
    int height = get_int("Hiehgt: ");

    draw(height);
}

// 목표 : 중첩 반복문을 사용하지 않고 재귀적 함수 형태로 나타내기

void draw(int h){
    // 높이가 0이라면(그릴 필요가 없다면)
    if (h == 0){
        return;         // 시작점(기준점)을 정해줘야 함(코드가 영원히 반복하지 않 = 음수가 돼도 계속 호출하지 않도록)
    }

    // 높이가 h-1인 피라미드 그리기
    draw(h-1);

    // 피라미드에서 폭이 h인 한 층 그리기
    for (int i = 0; i < h; i++){
        printf("#");
    }
    printf("\n");
}
