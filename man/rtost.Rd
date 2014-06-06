
\name{rtost}
\alias{rtost}
\title{Computes a robust TOST for equivalence from paired or unpaired data}

\description{
This function computes the TOST and key TOST quantities for the two one-sided test for equivalence [Schuirmann (1981) and Westlake (1981)], using the robust t-test of Yuen [Yuen and Dixon (1973), Yuen (1974)] in place of the standard Welch t test (t.test {stats}). The yuen t test makes no assumption of normality. The function computes the robust TOST for a sample of paired differences or for two samples. The function performs almost as well as the  Welch t test when the population distribution is normal and is more robust than the Welch t test in the face of non-normality (e.g., distributions that are long-tailed, heteroscedastic, or contaminated by outliers)[Yuen and Dixon (1973), Yuen (1974)]. 
}

\usage{
rtost(x, y = NULL, alpha = 0.05, epsilon = 0.31, tr = 0.2,  ...)
}

\arguments{
  \item{x}{the first (or only) sample }
  \item{y}{the second sample }
  \item{alpha}{test size }
  \item{tr}{the proportion (percent/100) of the data set to be trimmed}
  \item{epsilon}{magnitude of region of similarity }
  \item{...}{arguments to be passed to yuen.t.test } 
}

\details{The rtost function is wrapped around the yuen {PairedData} t test, a robust variant of the t test using trimmed means and winsorized variances. It provides tosts for the same range of designs, accepts the same arguments, and handles missing values the same way as tost {equivalence}. For the tost, the user must set epsilon, which is the magnitude of region similarity. Warning: with tr > 0.25 type I error control might be poor. 
}

\value{
  A list with the following components
  \item{mean.diff }{the mean of the difference}
  \item{se.diff }{the standard error of the difference}
  \item{alpha }{the size of the test}
  \item{ci.diff }{the 1-alpha confidence interval for the difference}
  \item{df }{the degrees of freedom used for the confidence interval}
  \item{epsilon }{the magnitude of the region of similarity}
  \item{result }{the outcome of the test of the null hypothesis of dissimilarity}
  \item{p.value }{the p-value of the significance test}
  \item{check.me }{the confidence interval corresponding to the p-value}
}

\references{
Schuirmann, D.L. 1981. On hypothesis testing to determine if the mean of
a normal distribution is contained in a known interval.  Biometrics 37,
617.

Robinson, A.P., and R.E. Froese. 2004. Model validation using equivalence
tests. Ecological Modelling 176, 349--358.

Wellek, S. 2003. Testing statistical hypotheses of equivalence.  Chapman
and Hall/CRC.  284 pp.

Westlake, W.J. 1981. Response to T.B.L. Kirkwood: bioequivalence testing
- a need to rethink.  Biometrics 37, 589-594.

Yuen, K.K. (1974) The two-sample trimmed t for unequal population variances. Biometrika, 61, 165-170.

Yuen, K.K., and Dixon, W.J. (1973) The approximate behavior and performance of the two-sample trimmed t.  Biometrika, 60, 369-374.
}

\author{ Gregory Belenky \email{belenky@wsu.edu}}

\note{This test is the tost for equivalence (tost {equivalence}) wrapped around the robust, trimmed mean, winsorized variance yuen.t.test (yuen {PairedData}).}

\seealso{ \code{\link{tost}}, \code{\link{yuen.t.test}}}

\examples{
data(ufc)
rtost(ufc$Height.m.p, ufc$Height.m, epsilon = 1, tr = 0.2)
}

\keyword{ htest }% at least one, from doc/KEYWORDS
