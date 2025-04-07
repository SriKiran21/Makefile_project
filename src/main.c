#include <stdio.h>
#include "magic.h"
#include "magic2.h"

extern const char msg[];
int main ()
{
    printf("%s\r\n",msg);
    printf("The magic Number is : %d\r\n",MAGIC_NUMBER );
    printf("The magic Number 2 is : %d\r\n",MAGIC_NUMBER_2 );
    return 0;
}