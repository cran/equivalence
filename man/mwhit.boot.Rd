\name{mwhit.boot}
\alias{mwhit.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
mwhit.boot(xy, i, q1 = pnorm(-0.5 * sqrt(2)), q2 = pnorm(+0.5 * sqrt(2)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xy}{ ~~Describe \code{xy} here~~ }
  \item{i}{ ~~Describe \code{i} here~~ }
  \item{q1}{ ~~Describe \code{q1} here~~ }
  \item{q2}{ ~~Describe \code{q2} here~~ }
}
\details{
  ~~ If necessary, more details than the description above ~~
}
\value{
  ~Describe the value returned
  If it is a LIST, use
  \item{comp1 }{Description of 'comp1'}
  \item{comp2 }{Description of 'comp2'}
  ...
}
\references{ ~put references to the literature/web site here ~ }
\author{ ~~who you are~~ }
\note{ ~~further notes~~ 

 ~Make other sections like Warning with \section{Warning }{....} ~
}
\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function(xy, i, q1=pnorm(-0.5*sqrt(2)), q2=pnorm(+0.5*sqrt(2)))
{
   x <- xy[i, 1]
   y <- xy[i, 2]
   n1 <- length(x)
   n2 <- length(y)

   W <- .C("sumW", as.double(x), as.double(y), as.integer(n1), as.integer(n2),
            result=as.integer(0))$result / (n1*n2)

   piXXY <- .C("sumXXY", as.double(x), as.double(y), as.integer(n1), as.integer(n2),
            result=as.integer(0))$result * 2/(n1*n2)/(n1-1)
   piXYY <- .C("sumXYY", as.double(x), as.double(y), as.integer(n1), as.integer(n2),
            result=as.integer(0))$result * 2/(n1*n2)/(n2-1)

   VarW <- VarW(W, piXXY, piXYY, n1, n2)
   eps1 <- 1/2 - pnorm(-0.5/sqrt(2))
   eps2 <- pnorm(1.0/sqrt(2)) - 1/2
   Wstat <- Wstatistic(W, eps1, eps2, VarW)

   VarW <- max(VarW, 0.001)
   C <- Wcutoff(0.05, eps1, eps2, VarW)

   result <- (Wstat < C)
  }
}
\keyword{nonparametric}
\keyword{htest}
