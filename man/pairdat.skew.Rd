\name{pairdat.skew}
\alias{pairdat.skew}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
pairdat.skew(n, VAR = 4, M = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{ ~~Describe \code{n} here~~ }
  \item{VAR}{ ~~Describe \code{VAR} here~~ }
  \item{M}{ ~~Describe \code{M} here~~ }
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
function(n, VAR=4, M=0)
{
   x <- rexp(n, sqrt(11/VAR)) - sqrt(VAR/11)
   y <- rexp(n, sqrt(11/10/VAR)) - sqrt(10*VAR/11) + M
   list(x=x, y=y)
  }
}
\keyword{distribution}
