\name{equivalence}
\alias{equivalence}
\title{Equivalence Tests}

\description{
  This package provides tools to perform several equivalence tests.
}

\note{Recent changes: the \code{tost.data} function is deprecated as of
  version 0.5.0; please use \code{tost}, which provides more
  functionality.}

\examples{

data(ufc)

### Tost

tost(ufc$Height.m.p, ufc$Height.m, epsilon = 1)

### equivalence plot

ufc.ht <- ufc[!is.na(ufc$Height),]
equivalence.xyplot(ufc.ht$Height.m ~ ufc.ht$Height.m.p,
                   alpha=0.05, b0.ii=0.1, b1.ii=0.2,
                   xlab="Predicted height (m)",
                   ylab="Measured height (m)")

}

\references{
Schuirmann, D.L. 1981. On hypothesis testing to determine if the mean of
a normal distribution is contained in a known interval.  Biometrics 37
617.

Robinson, A.P., and R.E. Froese. 2004. Model validation using equivalence
tests. Ecological Modelling 176, 349--358.

Wellek, S. 2003. Testing statistical hypotheses of equivalence.  Chapman
and Hall/CRC.  284 pp.

Westlake, W.J. 1981. Response to T.B.L. Kirkwood: bioequivalence testing
- a need to rethink.  Biometrics 37, 589-594.
}

\author{ Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\keyword{htest}



