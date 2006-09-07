\name{Wcutoff}
\alias{Wcutoff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Wcutoff(p, eps1, eps2, VarW)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{ ~~Describe \code{p} here~~ }
  \item{eps1}{ ~~Describe \code{eps1} here~~ }
  \item{eps2}{ ~~Describe \code{eps2} here~~ }
  \item{VarW}{ ~~Describe \code{VarW} here~~ }
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
function(p, eps1, eps2, VarW)
{
   ncp <- (eps1+eps2)^2/4/VarW
   return(sqrt(qchisq(p, 1, ncp)))
  }
}
\keyword{htest}
