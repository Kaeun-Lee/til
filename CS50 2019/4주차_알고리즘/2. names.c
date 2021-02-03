#include <cs50.h>
#include <stdio.h>
#include <string.h>

// 이름 찾기
int main(void){
    string names[4] = {"EMMA", "RODRIGO", "BRIAN", "DAVID"};

    for (int i = 0; i < 4; i++){
        if (strcmp(names[i], "EMMA") == 0){    
            printf("Found\n");  
            return 0;                          // 결과가 success
        }
    }
    printf("Not found\n");
    return 1;                                  // 결과가 fail
}
 
// strcmp : 두 문자열이 같으면 0을 반환
// 양수를 반환하면 첫 번째 문자열이 알파벳 기준으로 큰 경우이고, 음수면 반대의 경우
