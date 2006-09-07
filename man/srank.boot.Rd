\name{srank.boot}
\alias{srank.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
srank.boot(x, i, q1 = pnorm(-0.5 * sqrt(2)), q2 = pnorm(+0.5 * sqrt(2)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
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
function(x, i, q1=pnorm(-0.5*sqrt(2)), q2=pnorm(+0.5*sqrt(2)))
{
   x <- x[i]
   n <- length(x)
   U <- .C("sumU", as.double(x), as.integer(n), result=as.integer(0))$result
   q <- .C("sumq", as.double(x), as.integer(n), result=as.integer(0))$result
   U <- U / choose(n,2)
   q <- q / choose(n,3) / 3

   VarU <- VarU(U, q, n)
   q1 <- pnorm(-0.5*sqrt(2))
   q2 <- pnorm(+0.5*sqrt(2))
   Ustat <- Ustatistic(U, q1, q2, VarU)

   VarU <- max(VarU, 0.001)
   C <- Ucutoff(0.05, q1, q2, VarU)

   result <- (Ustat < C)
  }
}
\keyword{nonparametric}
\keyword{htest}
