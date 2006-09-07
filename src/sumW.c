#include <stdio.h>

// Note: FOR d=y-x,
// (x=as.double(y), y=as.double(x), m=as.integer(n), n=as.integer(m))

void sumW(double *x, double *y, int *m, int *n, int *result)
{
int SUM, i,j;

   SUM = 0;
   for(i=0; i<*m; i++) for(j=0; j<*n; j++)
      SUM += (x[i] - y[j] > 0);
   result[0] = SUM;
}
