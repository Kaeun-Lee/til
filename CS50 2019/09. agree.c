#include <cs50.h>
#include <stdio.h>

int main(void)
{
    // prompt user to agree
    char c = get_char("Do you agree?\n");

    // Check whether agreed
    if (c == 'Y' || c == 'y')   // ||는 or, &&는 and를 의미
    {
        printf("Agreed.\n");
    }
    else if (c == 'N' || c == 'n')
    {
        printf("Not agreed.\n");
    }
}
