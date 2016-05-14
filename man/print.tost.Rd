% $Id: tost.data.Rd,v 1.4 2006/06/15 02:33:53 andrewr Exp $

\name{print.tost}
\alias{print.tost}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Print methods for TOST objects}
\description{
     Printing objects of class '"tost"' by simple 'print' methods.
}
\usage{
  \method{print}{tost}(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ object of class '"tost"' }
  \item{...}{ arguments to be passed to other functions. }
}
\details{ The function inherits infrastructure from R's print.htest,
  so a number of elements have been copied from the help file of that function.

}
\value{
     the argument 'x', invisibly, as for all 'print' methods.

}
\author{ Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\seealso{ \code{\link{tost}}}
\examples{
data(ufc)
tost(ufc$Height.m.p, ufc$Height.m, epsilon = 1, paired = TRUE)
}
\keyword{ print }% at least one, from doc/KEYWORDS
