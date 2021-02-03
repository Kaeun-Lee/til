#include <cs50.h>
#include <stdio.h>


void draw(int h);

int main(void){
    int height = get_int("Hiehgt: ");

    draw(height);
}
sp
void draw(int h){
    if (h == 0){
        return;       // 시작점
    }
    draw(h-1);

    for (int i = 0; i < h; i++){
        printf("#");
    }
    printf("\n");
}
