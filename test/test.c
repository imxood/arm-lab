#include <stdio.h>

union{
    int i;
    char x[2];
}a;

int main(){

    a.x[0] = 10;
    a.x[1] = 1;
    printf("%d\n", a.i);

    int b=0;
    float c=1.0;

    printf("%f\n", c);

    if(b == c){
        printf("== true\n");
    }else
        printf("== false\n");

    return 0;

}
