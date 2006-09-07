% $Id: tost.stat.Rd,v 1.4 2006/06/15 02:33:53 andrewr Exp $

\name{tost.stat}
\alias{tost.stat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Computes a TOST for equivalence from sample statistics}
\description{
 This function computes the test and key test quantities for the two
 one-sided test for equivalence, as documented in Schuirmann (1981) and
 Westlake (1981).  This function computes the test from the statistics
 of a sample of paired differences of a normally-distributed population.  
}
\usage{
tost.stat(mean, std, n, null = 0, alpha = 0.05, Epsilon = 0.36, absolute = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mean}{ sample mean }
  \item{std}{ sample standard deviation }
  \item{n}{ sample size }
  \item{null}{ the value of the parameter in the null hypothesis }
  \item{alpha}{ test size }
  \item{Epsilon}{ magnitude of region of similarity }
  \item{absolute}{ choose units: absolute (TRUE) or relative to the standard
    deviation (FALSE). } 
}
\details{This test requires the assumption of normality of the
  population.  Wellek (2003, p. 12) suggests that 0.36 corresponds to a
  strict test and 0.72 to a liberal  test when epsilon is in units of
  relative standard deviation.  I have added the option to use an
  absolute interval (e.g. +/- 1 metre), which simply converts the cutoff
  to units of the sample standard deviation and applies the usual test.
}
\value{
  A list with the following components
  \item{Dissimilarity }{the outcome of the test of the null hypothesis
    of dissimilarity}
  \item{Mean }{the mean of the sample}
  \item{StdDev }{the standard deviation of the sample}
  \item{n }{the non-missing sample size}
  \item{alpha }{the size of the test}
  \item{Epsilon }{the magnitude of the region of similarity}
  \item{Interval }{the half-length of the two one-sided interval}
}
\references{
Schuirmann, D.L. 1981. On hypothesis testing to determine if the mean of
a normal distribution is contained in a known interval.  Biometrics 37
617.

Wellek, S. 2003. Testing statistical hypotheses of equivalence.  Chapman
and Hall/CRC.  284 pp.

Westlake, W.J. 1981. Response to T.B.L. Kirkwood: bioequivalence testing
- a need to rethink.  Biometrics 37, 589-594.
}
\author{Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}
\note{This test requires the assumption of normality of the
  population. The components of the test are t-based confidence
 intervals, so the Central Limit Theorem and Slutsky's Theorem may be
 relevant to its application in large samples.  }

\seealso{ \code{\link{tost.data}}, \code{\link{ptte.stat}} }

\examples{
data(ufc)
tost.stat(mean(ufc$Height.m.p - ufc$Height.m, na.rm=TRUE),
  sd(ufc$Height.m.p - ufc$Height.m, na.rm=TRUE),
  sum(!is.na(ufc$Height.m.p - ufc$Height.m)))


}
\keyword{ htest }% at least one, from doc/KEYWORDS
