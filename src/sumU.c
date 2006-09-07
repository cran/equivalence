#include <stdio.h>

void sumU(double *d, int *n, int *result)
{
int SUM;
int i,j;

   SUM = 0;
   for(i=0; i<*n-1; i++) for(j=i+1; j<*n; j++)
      SUM += (d[i]+d[j] > 0);
   result[0] = SUM;
}
