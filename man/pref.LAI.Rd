% $Id: pref.LAI.Rd,v 1.2 2005/09/26 02:29:14 andrewr Exp $

\name{pref.LAI}
\alias{pref.LAI}
\docType{data}
\title{Measured Leaf Area Index data from PREF, northern Idaho, USA}

\description{ These data are the juxtaposition of model output and field
measurements for 36 forest plots in the Priest River Experimental Forest
in northern Idaho, USA.  The model was based on the Beer-Lambert model
(Duursma et al. 2003). The data were used to demonstrate a
regression-based TOST in Robinson et al (2005).  }

\usage{data(pref.LAI)}
\format{
  A dataset with 36 observations on 8 variables, the following two of
  which were used for the test of equivalence:
  \describe{
    \item{\code{lai.pa}}{LAI as estimated using allometric functions
      applied to measurements of trees within the sample plot.}
    \item{\code{lai.bl}}{LAI as estimated using the Beer-Lambert model
      from measurements of interception using a hand-held ceptometer.}
  }
}
\details{
 Nothing in particular.  PREF, and northern Idaho, are very attractive.
}
\source{
The data are documented in Duursma et al. (2003) and Robinson et al (2005).  
}
\references{
Duursma, R.A., J.D. Marshall, and A.P. Robinson.  2003. Leaf area index
inferred from solar beam transmission in mixed conifer forests on
complex terrain. Agricultural and Forest Meteorology 118, 221-236

Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913
}
\examples{
data(pref.LAI)
}
\keyword{datasets}
