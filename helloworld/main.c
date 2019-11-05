#include <stdio.h> //Pre-processor directive
//#include <stdlib.h>
#include "hello.h"

int main(int argc, const char *argv[])
{
    int y = foo(argc);  /* Use the function here */
    if(1==1)
        printf("%d\n", y);
    return 0;
}