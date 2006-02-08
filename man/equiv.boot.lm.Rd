% $Id: equiv.boot.lm.Rd,v 1.5 2005/10/10 10:14:54 andrewr Exp $

\name{equiv.boot.lm}
\alias{equiv.boot.lm}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Fits an OLS regression and returns equivalence information. }
\description{
This is called by equiv.boot().  This function fits an OLS regression to the
observations denoted by index, assess whether the intercept and slope
are within their respective regions of similarity, and returns the
outcome as well as the estimates.
}
\usage{
equiv.boot.lm(compare, index, rel.int.int = 0.25, rel.int.slope = 0.25)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{compare}{ a pair of equal length vectors, response
    \emph{first}, predictor \emph{second}.}
  \item{index}{ index integers supplied by boot.}
  \item{rel.int.int}{ the relative size of the region of similarity for
    the intercept. }
  \item{rel.int.slope}{ the relative size of the region of similarity for
    the slope. }
}
\details{
The outcome is assessed via the bootstrap statistics, which are a
four-row table.  We focus on the first two, corresponding to the
intercept region of similarity and the slope region of similarity. The
original column shows whether or not the fitted line is within the
interval (0 or 1).  The bias column shows the difference between the
first column and the bootstrap-estimated proportion.  Obtain the
bootstrapped statistics using apply (see the examples).

The estimates of slope and intercept are kept for interest, e.g. to
check the distribution, obtain estimates of standard errors, etc.
}
\value{
The output is a four-component vector, comprising:
  \item{Boolean }{is the estimated intercept below the region of similarity?}
  \item{Boolean }{is the estimated intercept within the region of similarity?}
  \item{Boolean }{is the estimated intercept above the region of similarity?}
  \item{Boolean }{is the estimated slope below the region of similarity?}
  \item{Boolean }{is the estimated slope within the region of similarity?}
  \item{Boolean }{is the estimated slope above the region of similarity?}
  \item{Double }{estimated intercept}
  \item{Double }{estimated slope}
}

\references{  Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913 }

\author{Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\seealso{ \code{\link{lm}}, \code{\link{boot}},  \code{\link{equiv.boot}}}

\examples{
data(pref.4PG)
FourPG.plot.boot <- boot(cbind(pref.4PG$stemvolinc, pref.4PG$volinc4PG),
                         equiv.boot.lm,
                         R=100,
                         rel.int.int=0.25, rel.int.slope=0.25)
FourPG.plot.boot
apply(FourPG.plot.boot$t, 2, mean)[1:6]

data(pref.LAI)
lai.plot.boot <- boot(cbind(pref.LAI$lai.pa, pref.LAI$lai.bl),
                      equiv.boot.lm,
                      R=100,
                      rel.int.int=0.25, rel.int.slope=0.25)
lai.plot.boot
apply(lai.plot.boot$t, 2, mean)[1:6]

data(ufc)
ufc.plot.boot <- boot(cbind(ufc$Height.m, ufc$Height.m.p),
                      equiv.boot.lm,
                      R=100,
                      rel.int.int=0.25, rel.int.slope=0.25)
ufc.plot.boot
apply(ufc.plot.boot$t, 2, mean)[1:6]

}
\keyword{ models }
\keyword{ regression }
