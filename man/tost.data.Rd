% $Id: tost.data.Rd,v 1.3 2005/09/26 07:09:43 andrewr Exp $

\name{tost.data}
\alias{tost.data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes a TOST for equivalence from a sample}
\description{
 This function computes the test and key test quantities for the two
 one-sided test for equivalence, as documented in Schuirmann (1981) and
 Westlake (1981).  This function computes the test from a sample of a
 normally-distributed population.  
}
\usage{
tost.data(x, null = 0, alpha = 0.05, Epsilon = 0.36, absolute = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ the sample }
  \item{null}{ the value of the parameter in the null hypothesis }
  \item{alpha}{ test size }
  \item{Epsilon}{ magnitude of region of similarity }
  \item{absolute}{ choose units: absolute (TRUE) or relative to the standard
    deviation (FALSE). } 
}
\details{This test requires the assumption of normality of the
  population.  Wellek (2003) suggests that 0.36 corresponds to a strict
  test and 0.72 to a liberal test when epsilon is in units of relative
  standard deviation.  I have added the option to use an absolute
  interval (e.g. +/- 1 metre), which simply converts the cutoff to units
  of the sample standard deviation and applies the usual test. 
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

Robinson, A.P., and R.E. Froese. 2004. Model validation using equivalence
tests. Ecological Modelling 176, 349--358

Wellek, S. 2003. Testing statistical hypotheses of equivalence.  Chapman
and Hall/CRC.  284 pp.

Westlake, W.J. 1981. Response to T.B.L. Kirkwood: bioequivalence testing
- a need to rethink.  Biometrics 37, 589-594.
}
\author{ Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\note{This test requires the assumption of normality of the
  population. The components of the test are t-based confidence
 intervals, so the Central Limit Theorem and Slutsky's Theorem may be
 relevant to its application in large samples.  }

\seealso{ \code{\link{tost.stat}}, \code{\link{ptte.data}} }
\examples{
data(ufc)
tost.data(ufc$Height.m.p - ufc$Height.m)
}
\keyword{ htest }% at least one, from doc/KEYWORDS
