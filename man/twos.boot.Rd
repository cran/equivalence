\name{twos.boot}
\alias{twos.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ ~~function to do ... ~~ }
\description{
  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
twos.boot(xy, i, Epsilon = 0.5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xy}{ ~~Describe \code{xy} here~~ }
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
function (xy, i, Epsilon=0.5)
{
    x <- xy[i, 1]
    y <- xy[i, 2]
    n1 <- sum(!is.na(x))
    n2 <- sum(!is.na(y)) 
    mean <- mean(y, na.rm = TRUE) - mean(x, na.rm = TRUE)
    sp <- sqrt(((n1-1)*var(x, na.rm = TRUE) 
              + (n2-1)*var(y, na.rm = TRUE))/(n1+n2-2))

    df1 <- 1
    df2 <- n1+n2-2
    cutoff <- c(0)
    ncp <- Epsilon^2 * n1*n2/(n1+n2-2)

    findquant <- function(alpha, q, df1, df2, ncp) alpha - pf(q,
        df1, df2, ncp)
    cutoff <- sqrt(uniroot(findquant, c(0, 1e+23), alpha = 0.05,
        df1 = df1, df2 = min(df2, 4000), ncp = ncp)$root)
    tstat <- mean/(sp*sqrt(1/n1+1/n2))
    result <- (abs(tstat) < cutoff)
  }
}
\keyword{nonparametric}
\keyword{htest}
