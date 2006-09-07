\name{sign.boot}
\alias{sign.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
sign.boot(x, i, p1 = 0.2, p2 = 0.8)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
  \item{i}{ ~~Describe \code{i} here~~ }
  \item{p1}{ ~~Describe \code{p1} here~~ }
  \item{p2}{ ~~Describe \code{p2} here~~ }
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
function(x, i, p1=0.2, p2=0.8)
{
   x <- x[i]
   n <- length(x)

   Nplus <- sum(x > 0)
   Nzero <- sum(x == 0)
   Nminus <- n - Nplus - Nzero
   if(sum(Nzero) > 0) cat("WARNING:", sum(Nzero), "ties occurred.\n")
   S1 <- qbinom(0.95, n, p1)
   S2 <- qbinom(0.05, n, p2)

   result <- sum(Nplus >= S1 & Nplus <= S2)
  }
}
\keyword{nonparametric}
\keyword{htest}
