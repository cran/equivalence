\name{equivalence-deprecated}
\alias{equivalence-deprecated}
\alias{tost.data}
%------ NOTE:  ../R/Deprecated.R   must be synchronized with this!
\title{Deprecated Functions in Equivalence package}
%------ PLEASE: put \alias{.} here for EACH !
\description{
  These functions are provided for compatibility with older versions of
  \R only, and may be defunct as soon as the next release.
}
\usage{
tost.data(x, null = 0, alpha = 0.05, Epsilon = 0.36, absolute = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ the sample of paired differences }
  \item{null}{ the value of the parameter in the null hypothesis }
  \item{alpha}{ test size }
  \item{Epsilon}{ magnitude of region of similarity }
  \item{absolute}{ choose units: absolute (TRUE) or relative to the standard
    deviation (FALSE). } 
}
\details{
  The original help page for these functions is 
  available at \code{help("oldName-deprecated")} (note the quotes).
  Functions in packages other than the base package are listed in
  \code{help("pkg-deprecated")}.

  \kbd{tost.data} is superceded by \code{\link{tost}}.
}
\seealso{
  \code{\link{Deprecated}}
}
\keyword{misc}
