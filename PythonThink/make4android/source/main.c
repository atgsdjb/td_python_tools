#include<stdio.h>
#include<td_atgs.h>
int main(int argc,char** argv){
    const int a = 12;
    const int b = 13;
    int result = td_add(a,b);
    printf("+++++++++++++=%d\n",result);
    result = td_sub(a,b);
    printf("-------------=%d\n",result);
    return 0;
}