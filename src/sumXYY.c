#include <stdio.h>

void sumXYY(double *x, double *y, int *m, int *n, int *result)
{
int SUM, i, j1,j2;

   SUM = 0;
   for(i=0; i<*m; i++) for(j1=0; j1<*n-1; j1++) for(j2=j1+1; j2<*n; j2++)
   { SUM += (x[i] - y[j1] > 0) * (x[i] - y[j2] > 0); }
   result[0] = SUM;
}
