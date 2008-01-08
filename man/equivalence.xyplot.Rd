% $Id: equivalence.xyplot.Rd,v 1.7 2006/06/15 02:33:53 andrewr Exp $

\name{equivalence.xyplot}
\alias{equivalence.xyplot}

\title{Constructs graphical regression-based tests of equivalence inside
a lattice coplot}

\description{ Implements regression-based tests of equivalence within
  lattice graphics.}

\usage{ equivalence.xyplot(formula, alpha, b0.ii, b1.ii,
add.smooth=FALSE, b0.absolute=FALSE, ...)  }

\arguments{
  \item{formula}{a formula describing the form of conditioning plot. See
  the manual entry for \code{xyplot()} for more details.}
  \item{alpha}{ the size of the test }
  \item{b0.ii}{the half-length of the region of similarity for the
    intercept, can be relative or absolute (see below). }
  \item{b1.ii}{the half-length of the region of similarity for the
    slope.}
  \item{add.smooth}{adds a loess smooth to the graph.}
  \item{b0.absolute}{is b0.ii in absolute or relative units?}
  \item{...}{ extra arguments passed on to \code{xyplot()} }
}

\details{
 The graphic created by this function was proposed by Robinson et
 al. (2005) as a visual summary of the regression-based TOST.  At first
 glance the graph will look messy; interpretation eases with practice.  The
 following points should be noted.
 
\item{LS line:}{A black, solid line of best fit is added.}
\item{Mean:}{A grey vertical bar indicates $\bar x$ and the TOST confidence
  interval for the intercept.}
\item{b0 R.S.:}{A shaded polygon is the region of
  similarity of the intercept, to test the model bias.  }
\item{Test b0:}{If the grey vertical bar is within the shaded polygon
    then reject the null hypothesis of dissimilarity. This is a test of
  \emph{bias}.} 
\item{...1 -}{If the \emph{region} is too low then the predictions are
  too low. }
\item{...2 -}{If the \emph{region} is too high then the predictions are
  too high. }
\item{...3 -}{If the \emph{region} is too narrow then the predictions are
  too variable. }
\item{b1 C.I.:}{A black vertical bar undermeath the grey bar represents a confidence
  interval for the slope of the line of best fit.}
\item{b1 R.S.:}{Two black dashed lines are added representing the region of
  similarity.}
\item{Test b1:}{If the black bar is within the angle
    described by the dashed black lines then the slope of the
    observed/predicted regression is significantly similar to 1. This
    is a test of \emph{proportionality}.}
\item{...1 -}{If the \emph{bar} is too high then the slope is too high; the
  model over-predicts the higher observations and under-predicts the
  lower observations.}
\item{...2 -}{If the \emph{bar} is too low then the slope is too low; the
  model underpredicts the higher observations and overpredicts the
  lower observations (analogous to regression to the mean).}
\item{...3 -}{If the \emph{region} is too narrow then the predictions are too
  variable.}

The implementation in Robinson et al (2005) required shifting so that
the predictor has 0 mean. This hack has been removed here so that the
basic graph object is a plot of the two variables being compared.  }

\value{
Run for its side effect of producing a lattice plot object.
}

\references{
  Robinson, A.P., R.A. Duursma, and J.D. Marshall. 2005. A
regression-based equivalence test for model validation: shifting the
burden of proof. Tree Physiology 25, 903-913. }

\author{ Andrew Robinson \email{A.Robinson@ms.unimelb.edu.au}}

\section{Warning}{The accuracy of the output of this function is
  contingent on the usual regression assumptions, which are not checked
  here.  \emph{Caveat emptor}! Consider using equiv.boot() for a
  bootstrap-based solution. Transforming either variable will probably
  complicate the analysis considerably.} 

\note{This version produces a regression-based TOST for each level of
  the conditioning factor.  There may be an argument for pooling the
  test across these levels, in which case some prepanel computations will be
  helpful.

  The TOST requires only estimates and standard errors from the data.
  Therefore the linear model used in the panel function can be replaced
  by any model that will produce suitable estimates.  For example, in
  applying this function to hierarchical data we have had success using
  lme() instead.

  I'm not entirely convinced that all these lines on one image are a
  good idea.  It's straightforward to remove some, or change the
  colours. Recommendations for graphics that are visually cleaner are
  welcome. }

\section{Acknowledgements}{Feedback from Mohammad Al-Ahmadi has been
  very useful for this function.}

\seealso{\code{\link{tost.stat}}, \code{\link{xyplot}},
  \code{\link{equiv.boot.lm}}}

\examples{

data(pref.4PG)
equivalence.xyplot(pref.4PG$stemvolinc ~ pref.4PG$volinc4PG,
                   alpha=0.05, b0.ii=0.25, b1.ii=0.25, add.smooth=TRUE, 
                   xlab=expression(paste("4PG decadal volume growth (", m^3,
                       ha^-1, decade^-1, ")", sep="")), 
                   ylab=expression(paste("Measured decadal volume growth (",
                       m^3, ha^-1, decade^-1, ")", sep="")))

data(pref.LAI)
equivalence.xyplot(pref.LAI$lai.pa ~ pref.LAI$lai.bl,
                   alpha=0.05, b0.ii=0.25, b1.ii=0.25,
                   xlab=expression(paste("LAI Beer-Lambert (", m^2, m^-2, ")",
                       sep="")), 
                   ylab=expression(paste("LAI Ceptometer (", m^2, m^-2, ")",
                       sep=""))) 


data(ufc)
ufc.ht <- ufc[!is.na(ufc$Height),]
equivalence.xyplot(ufc.ht$Height.m ~ ufc.ht$Height.m.p,
                   alpha=0.05, b0.ii=0.1, b1.ii=0.2,
                   xlab="Predicted height (m)",
                   ylab="Measured height (m)")

equivalence.xyplot(ufc.ht$Height.m ~ ufc.ht$Height.m.p | ufc.ht$Species,
                   alpha=0.05, b0.ii=0.1, b1.ii=0.2,
                   xlab="Predicted height (m)",
                   ylab="Measured height (m)",
                   subset=ufc.ht$Species \%in\%
                        levels(ufc.ht$Species)[table(ufc.ht$Species)>5])
}



\keyword{ models }
\keyword{ htest }
