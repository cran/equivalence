% $Id: equiv.boot.Rd,v 1.5 2006/09/07 01:47:22 andrewr Exp $

\name{equiv.boot}
\alias{equiv.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Regression-based TOST using bootstrap }
\description{
This function wraps the regression-based TOST equivalence test inside a
bootstrap, extracts and reports the useful quantities, and reports the
outcome of the test.  The function was written for validating models,
and requires paired data points.  To
use it for this purpose, pass the model predictions as the predictor
variable, and the observations (which the predictions are intended to
match) as the response variable. 
}
\usage{
equiv.boot(x, y, alpha = 0.05, b0.ii = 0.25, b1.ii = 0.25, reps = 100,
            b0.ii.absolute = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{the predictor variable (commonly predictions)}
  \item{y}{the response variable (commonly observations)}
  \item{alpha}{the size of the test }
  \item{b0.ii}{the half-length of the region of similarity for the
    intercept, expressed as a proportion of the estimate or in the same
    units as the estimate (see b0.ii.absolute). }
  \item{b1.ii}{the half-length of the region of similarity for the
    slope, expressed as a proportion of the estimate.}
  \item{reps}{the number of bootstrap replicates required }
  \item{b0.ii.absolute}{ option to express b0.ii in the same units as
    the estimate of the intercept. }
}
\details{
In each case, if the two one-sided confidence
interval is inside the region of similarity then the null hypothesis of
dissimilarity is \emph{rejected}. 
}
\value{
  A list of length 10, comprising
  \item{n}{The effective (non-missing) sample size}
  \item{ci.b0}{The intercept TOST confidence interval}
  \item{rs.b0}{The intercept region of similarity }
  \item{q.b0}{The proportions of simulations below, within, and above, the intercept region of similarity }
  \item{Test.b0}{The outcome of the test of the null hypothesis of
    dissimilarity for the intercept (Reject/Not Reject)}
  \item{ci.b1}{The slope TOST confidence interval}
  \item{rs.b1}{The slope region of similarity }
  \item{q.b1}{The proportions of simulations below, within, and above, the slope region of similarity }
  \item{Test.b1}{The outcome of the test of the null hypothesis of
    dissimilarity for the slope (Reject/Not Reject)}
  \item{eff.alpha}{The corrected alpha for each of the two independent tests.}
}

\references{  Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913. }

\author{Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\section{Acknowledgements}{Feedback from Mohammad Al-Ahmadi has been
  very useful for this function.}

\seealso{ \code{\link{lm}}, \code{\link{boot}}, \code{\link{tost}}}

\examples{

# Approximately reproduces the first row from Table 2 of Robinson et al. (2005)

data(pref.4PG)
equiv.boot(pref.4PG$volinc4PG, pref.4PG$stemvolinc)

}

\keyword{ htest }% at least one, from doc/KEYWORDS
