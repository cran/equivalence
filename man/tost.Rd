% $Id: tost.data.Rd,v 1.4 2006/06/15 02:33:53 andrewr Exp $

\name{tost}
\alias{tost}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes a TOST for equivalence from paired or unpaired data}
\description{
 This function computes the test and key test quantities for the two
 one-sided test for equivalence, as documented in Schuirmann (1981) and
 Westlake (1981).  The function computes the test for a sample of
 paired differences or two samples, assumed to be from a
 normally-distributed population.

 Much code in the function has been copied and adapted from R's
 t.test.default function.
}
\usage{
tost(x, y = NULL, epsilon = 1, paired = FALSE, var.equal = FALSE,
              conf.level = 0.95, alpha = NULL,
    ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ the first (or only) sample }
  \item{y}{ the second sample }
  \item{epsilon}{ magnitude of region of similarity }
  \item{paired}{  a logical indicating whether you want a paired tost }
  \item{var.equal}{  a logical variable indicating whether to treat the two
          variances as being equal. If 'TRUE' then the pooled variance
          is used to estimate the variance otherwise the Welch (or
          Satterthwaite) approximation to the degrees of freedom is
          used.}
  \item{conf.level}{ confidence level of the interval }
  \item{alpha}{ test size (for backwards-compatibility, overrides conf.level)}
  \item{...}{ arguments to be passed to other functions. }
}
\details{ The function inherits infrastructure from R's t.test.default,
  so a number of elements have been copied from the help file of that function.

  This test requires the assumption of normality of the
  population, or an invocation of large-sample theory.  The function
  wraps around the \kbd{t.test} function, so it provides tosts for
  the same range of designs, accepts the same arguments, and handles
  missing values the same way.

   If 'paired' is 'TRUE' then both 'x' and 'y' must be specified and
     they must be the same length.  Missing values are silently removed
     (in pairs if 'paired' is 'TRUE').  If 'var.equal' is 'TRUE' then
     the pooled estimate of the variance is used.  By default, if
     'var.equal' is 'FALSE' then the variance is estimated separately
     for both groups and the Welch modification to the degrees of
     freedom is used.

}
\value{
  A list with the following components
  \item{estimate }{the mean of the difference}
  \item{se.diff }{the standard error of the difference}
  \item{alpha }{the size of the test}
  \item{data.name}{a character string giving the name(s) of the data}
  \item{ci.diff }{the 1-alpha confidence interval for the difference}
  \item{parameter }{the degrees of freedom used for the confidence interval}
  \item{epsilon }{the magnitude of the region of similarity}
  \item{result }{the outcome of the test of the null hypothesis
    of dissimilarity}
  \item{method}{a character string indicating what type of t-test was
          performed}
  \item{null.value }{the specified hypothesized value of the mean or mean
          difference depending on whether it was a one-sample tost or a
          two-sample tost.}
  \item{tost.p.value }{the p-value of the tost significance test}
  \item{tost.interval }{the two one-sided confidence interval corresponding to the test.}

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
tost(ufc$Height.m.p, ufc$Height.m, epsilon = 1, paired = TRUE)
}
\keyword{ htest }% at least one, from doc/KEYWORDS
