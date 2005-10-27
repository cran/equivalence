% $Id: pref.4PG.Rd,v 1.4 2005/09/26 07:09:43 andrewr Exp $

\name{pref.4PG}
\alias{pref.4PG}
\docType{data}
\title{Measured and simulated data from PREF, northern Idaho, USA, and 4-PG }
\description{
These data are the juxtaposition of model output and field measurements
for the Priest River Experimental Forest in northern Idaho, USA.  The
model was a process-based aspatial forest stand model called 4-PG,
developed from 3-PG by Duursma (2004). The data were used to demonstrate
a regression-based TOST in Robinson et al (2005). 
}
\usage{data(pref.4PG)}
\format{
  A dataset with 35 observations on 33 variables, of which the
  following two were used for the model validation exercise.
  \describe{
    \item{\code{stemvolinc}}{measured decadal stem growth in $m^3/ha$}
    \item{\code{volinc4PG}}{predicted decadal stem growth in $m^3/ha$}
  }
}
\details{ Nothing in particular.  Devil's club (\emph{Oplopanax horridus})
  is very painful.  
}
\source{
The data are documented in Duursma (2004) and Robinson et al (2005).  
}

\references{
Duursma, R.A. 2004. A simple process-based model of forest growth,
and a test for the Priest River Experimental Forest. Ph.D. Thesis,
University of Idaho, 169 p.

Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913
}

\examples{
data(pref.4PG)
}
\keyword{datasets}
