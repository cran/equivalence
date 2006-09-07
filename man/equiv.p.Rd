% $Id: equiv.p.Rd,v 1.5 2006/06/15 02:33:53 andrewr Exp $

\name{equiv.p}
\alias{equiv.p}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Inverts the regression-based TOST equivalence test  }
\description{
This function generates the TOST intervals for the intercept and the
slope of the regression of y on x, and determines the smallest region of
indifference in each case that would reject the null hypothesis of
dissimilarity. 
}
\usage{
equiv.p(x, y, alpha = 0.05)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ The predictor variable - perhaps the model predictions }
  \item{y}{ The response variable - perhaps the observations }
  \item{alpha}{ The size of the test }
}
\details{
  The generated confidence intervals are corrected for experiment-level
  size of alpha using Bonferroni. 
}
\value{ A list of two items:
  \item{Intercept}{The smallest half-length of the interval that leads
    to rejection of the null hypothesis of dissimilarity for the
    intercept, in the units of y.}
  \item{Slope}{The smallest half-length of the interval that leads
    to rejection of the null hypothesis of dissimilarity for the
    slope, in the units of the slope.}
}
\references{
Robinson, A.P., and R.E. Froese. 2004. Model validation using equivalence
tests. Ecological Modelling 176, 349--358.
  
Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913.
}
\author{Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\note{The accuracy of the output of this function is contingent on the
  usual regression assumptions, which are not checked here.  Caveat emptor!}

\seealso{ \code{\link{tost.data}}}
\examples{

data(ufc)
equiv.p(ufc$Height.m.p, ufc$Height.m)

}
\keyword{ models }
\keyword{ htest }
