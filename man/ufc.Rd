% $Id: ufc.Rd,v 1.3 2006/06/15 02:33:53 andrewr Exp $

\name{ufc}
\alias{ufc}
\docType{data}
\title{Upper Flat Creek cruise data}
\description{
These are forest measurement data from the Upper Flat Creek unit of the
University of Idaho Experimental Forest, measured in 1991.  The
inventory was based on variable radius plots with 6.43 sq. m. per ha. BAF
(Basal Area Factor).  The forest stand was 121.5 ha.
}
\usage{data(ufc)}
\format{
  A data frame with 633 observations on the following 12 variables.
  \describe{
    \item{\code{Plot}}{plot label}
    \item{\code{Tree}}{tree label}
    \item{\code{Species}}{species code}
    \item{\code{Dbh}}{tree diameter at 1.37 m. from the ground, measured
      in millimetres. }
    \item{\code{Height}}{tree height measured in decimetres}
    \item{\code{Height.ft}}{tree height converted to feet}
    \item{\code{Dbh.in}}{tree diameter converted to inches}
    \item{\code{Height.ft.p}}{predicted tree height in feet}
    \item{\code{Height.m}}{tree height in metres}
    \item{\code{Height.m.p}}{predicted tree height in metres}
  }
}
\details{
 Plots that were measured with no trees are signified in the dataset by
 lines that have blank species codes and missing DBH.
}
\source{
 The data are provided courtesy of Harold Osborne and Ross Appelgren of
 the University of Idaho Experimental Forest.  The predicted height
 comes from the height/diameter model documented in Wykoff et
 al. (1982). The data and model were used in Robinson et al. (2005).
}
\references{
Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913.

Wykoff,W.R., N.L. Crookston, and A.R. Stage. 1982. User's guide to the
stand Prognosis model. GTR-INT 133, USDA Forest Service, Intermountain
Research Station, Ogden, UT, 113 p. 
}
\examples{
data(ufc)
}
\keyword{datasets}
