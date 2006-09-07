\name{boot.boot}
\alias{boot.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
boot.boot(x, i, Epsilon = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ ~~Describe \code{x} here~~ }
  \item{i}{ ~~Describe \code{i} here~~ }
  \item{Epsilon}{ ~~Describe \code{Epsilon} here~~ }
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
function (x, i, Epsilon=0.5)
{
    reps <- 50
    x <- x[i]
    mean <- mean(x)
    boots <- boot(x, meanInBoot, reps)$t
    C1 <- quantile(boots, 0.05)
    C2 <- quantile(boots, 0.95)

    result <- (C1 > -Epsilon & C2 < +Epsilon)
  }
}
\keyword{nonparametric}
\keyword{htest}
