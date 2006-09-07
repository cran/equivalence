\name{Ustatistic}
\alias{Ustatistic}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
Ustatistic(U, q1, q2, VarU)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{U}{ ~~Describe \code{U} here~~ }
  \item{q1}{ ~~Describe \code{q1} here~~ }
  \item{q2}{ ~~Describe \code{q2} here~~ }
  \item{VarU}{ ~~Describe \code{VarU} here~~ }
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
function(U, q1, q2, VarU)
   return( abs(U-1/2*(q2+q1))/sqrt(VarU) )
}
\keyword{htest}
