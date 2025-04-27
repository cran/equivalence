#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
   Check these declarations against the C/Fortran source code.
*/

/* .C calls */
extern void sumq(void *, void *, void *);
extern void sumU(void *, void *, void *);
extern void sumW(void *, void *, void *, void *, void *);
extern void sumXXY(void *, void *, void *, void *, void *);
extern void sumXYY(void *, void *, void *, void *, void *);

static const R_CMethodDef CEntries[] = {
    {"sumq",   (DL_FUNC) &sumq,   3},
    {"sumU",   (DL_FUNC) &sumU,   3},
    {"sumW",   (DL_FUNC) &sumW,   5},
    {"sumXXY", (DL_FUNC) &sumXXY, 5},
    {"sumXYY", (DL_FUNC) &sumXYY, 5},
    {NULL, NULL, 0}
};

void R_init_equivalence(DllInfo *dll)
{
    R_registerRoutines(dll, CEntries, NULL, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}
