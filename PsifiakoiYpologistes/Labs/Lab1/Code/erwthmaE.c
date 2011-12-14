/************************************** 
 * Psifiakoi Ypologistes Prwto project
 * Askhsh 1
 * Iasonas Paidopoulos
 * AM: 2009030087  
 * erwthma d)                  
 **************************************/
 
#include <stdio.h>
#include <stdlib.h>
int glob;

int main()
{
int local;

int *n = (int*)malloc(1);
printf("H thesh mnimis ths main einai %d \n",&main);
printf ("H thesh mnimis ths katholikis metavliths einai %d \n",&glob);
printf ("H thesh mnimis ths topikis metavliths einai %d \n",&local);
printf ("H thesh mnimis pou epistrefei to malloc einai %d \n",&n);
getchar();
}
