% $Id: tost.data.Rd,v 1.4 2006/06/15 02:33:53 andrewr Exp $

\name{tost}
\alias{tost}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes a TOST for equivalence from paired or unpaired data}
\description{
 This function computes the test and key test quantities for the two
 one-sided test for equivalence, as documented in Schuirmann (1981) and
 Westlake (1981).  This function computes the test for a sample of
 paired differences or two samples, assumed to be from a
 normally-distributed population.  
}
\usage{
tost(x, y = NULL, alpha = 0.05, epsilon, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ the first (or only) sample }
  \item{y}{ the second sample }
  \item{alpha}{ test size }
  \item{epsilon}{ magnitude of region of similarity }
  \item{...}{ arguments to be passed to \kbd{t.test} } 
}
\details{This test requires the assumption of normality of the
  population, or an invocation of large-sample theory.  The function
  wraps around the \kbd{t.test} function, so it provides tosts for
  the same range of designs, accepts the same arguments, and handles
  missing values the same way.
}
\value{
  A list with the following components
  \item{mean.diff }{the mean of the difference}
  \item{se.diff }{the standard error of the difference}
  \item{alpha }{the size of the test}
  \item{ci.diff }{the 1-alpha confidence interval for the difference}
  \item{df }{the degrees of freedom used for the confidence interval}
  \item{epsilon }{the magnitude of the region of similarity}
  \item{result }{the outcome of the test of the null hypothesis
    of dissimilarity}
  \item{p.value }{the p-value of the significance test}
  \item{check.me }{the confidence interval corresponding to the p-value}

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

\note{This test requires the assumption of normality of the
  population. The components of the test are t-based confidence
 intervals, so the Central Limit Theorem and Slutsky's Theorem may be
 relevant to its application in large samples.  }

\seealso{ \code{\link{tost.stat}}, \code{\link{ptte.data}} }
\examples{
data(ufc)
tost(ufc$Height.m.p, ufc$Height.m, epsilon = 1)
}
\keyword{ htest }% at least one, from doc/KEYWORDS
