% $Id: ptte.data.Rd,v 1.4 2006/06/15 02:33:53 andrewr Exp $

\name{ptte.data}
\alias{ptte.data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes a paired t-test for equivalence from a single sample of a
  normally-distributed population}
\description{
 This function computes the test and key test quantities for the paired
 t-test for equivalence, as documented in Wellek (2003, pp 77-80).  This
 function computes the test from a sample of a normally-distributed
 population. 
}
\usage{
ptte.data(x, alpha = 0.05, Epsilon = 0.25)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ paired differences }
  \item{alpha}{ test size }
  \item{Epsilon}{ magnitude of region of similarity }
}
\details{
  
This test requires the assumption of normality of the population.  Under
  that assumption the test is the uniformly most powerful invariant test
  (Wellek, 2003, pp. 78-79).

  The function as documented by Wellek (2003) uses units relative
to the standard deviation, noting (p. 12) that 0.25 corresponds to a
strict test and 0.5 to a liberal test. 
 
}
\value{
A list with the following components
  \item{Dissimilarity }{the outcome of the test of the null hypothesis
    of dissimilarity}
  \item{Mean }{the mean of the sample}
  \item{StdDev }{the standard deviation of the sample}
  \item{n }{the sample size}
  \item{alpha }{the size of the test}
  \item{missing }{the number of observations missing}
  \item{Epsilon }{the magnitude of the region of similarity}
  \item{cutoff }{the critical value}
  \item{Tstat }{the test statistic; if Tstat < cutoff then the null
    hypothesis is rejected.}
  \item{Power }{the power of the test evaluated at the observed value}
}
\references{
Robinson, A.P., and R.E. Froese. 2004. Model validation using equivalence
tests. Ecological Modelling 176, 349--358.

Wellek, S. 2003. Testing statistical hypotheses of equivalence.  Chapman
and Hall/CRC.  284 pp.
   }
\author{Andrew Robinson\email{A.Robinson@ms.unimelb.edu.au}}

\note{This test requires the assumption of normality of the
  population.  Under that assumption the test is the uniformly most powerful
  invariant test (Wellek, 2003, pp. 78-79). The exposition in Robinson
  and Froese (2004) mistakenly omits the square root of the F-quantile.}

\seealso{ \code{\link{ptte.stat}}, \code{\link{tost.data}}}
\examples{
data(ufc)
ptte.data(ufc$Height.m.p - ufc$Height.m)
}
\keyword{ htest }% at least one, from doc/KEYWORDS
