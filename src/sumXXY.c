#include <stdio.h>

void sumXXY(double *x, double *y, int *m, int *n, int *result)
{
int SUM, i1,i2,j;

   SUM = 0;
   for(i1=0; i1<*m-1; i1++) for(i2=i1+1; i2<*m; i2++) for(j=0; j<*n; j++) 
   { SUM += (x[i1] - y[j] > 0) * (x[i2] - y[j] > 0); }
   result[0] = SUM;
}
