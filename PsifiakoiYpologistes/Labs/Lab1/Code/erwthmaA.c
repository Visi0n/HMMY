/************************************** 
 * Psifiakoi Ypologistes Prwto project
 * Ergasthriakh Askhsh 1
 * Iasonas Paidopoulos
 * AM: 2009030087             
 * erwthma a)       
 **************************************/
#include <stdio.h>
#include <stdlib.h>
int main() {
int A[10];
int i;
printf ("Erwthma a) \n");
printf ("--------------- \n");
for (i = 0; i < 10; i++)
{
A[i] = i;
}
printf ("H thesh mnimis tou A einai %d \n",A);
printf ("H thesh mnimis tou A+1 einai %d \n",A+1);
printf ("To apotelesma pou pernw otan kanw cast th thesh mnimis tou A se akereo kai prosthesw to 1 einai %d \n",(((int) A) + 1));
printf ("H thesh mnhmhs tou deuterou stixeiou tou A einai %d \n",&A[1]);
getchar();
}

