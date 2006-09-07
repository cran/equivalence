#include <stdio.h>

void sumq(double *d, int *n, int *result)
{
int SUM;
int i,j,k;
int I_ij, I_ik, I_jk;

   SUM = 0;
   for(i=0; i<*n-2; i++) for(j=i+1; j<*n-1; j++) for(k=j+1; k<*n; k++) 
   {
      I_ij = (d[i]+d[j] > 0);
      I_ik = (d[i]+d[k] > 0);
      I_jk = (d[j]+d[k] > 0);
      SUM = SUM + I_ij*I_ik + I_ij*I_jk + I_ik*I_jk;
   }
   result[0] = SUM;
}

/* HOW TO RUN IT

[markf@pc1420 ~]$ R CMD SHLIB sumq.c

n <- 100
d <- rnorm(n)

dyn.load("sumq.so")
result <- 0
n <- length(d)
.C("sumq",d=as.double(d), n=as.integer(n), result=as.integer(result))$result

# COMPARE WITH R
SUM <- 0; n <- length(d)
for(i in 1:(n-2)) for(j in (i+1):(n-1)) for(k in (j+1):n)
{  I_ij = (d[i]+d[j] > 0); I_ik = (d[i]+d[k] > 0); I_jk = (d[j]+d[k] > 0);
   SUM = SUM + I_ij*I_ik + I_ij*I_jk + I_ik*I_jk;
}
print(SUM)
*/
