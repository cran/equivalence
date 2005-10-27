# $Id: equivalence.xyplot.R,v 1.7 2005/10/10 10:14:43 andrewr Exp $

"equivalence.xyplot" <-
    function(formula,          
             alpha,      # The size; e.g. 0.05
             b0.ii,      # The half-length of the intercept r.s. (proportion)
             b1.ii,      # The half-length of the slope r.s. (proportion)
             ...) {
      bg <- trellis.par.get("background")
      bg$col <- "white"
      trellis.par.set("background", bg)
      print(xyplot(formula,
                   subscripts = TRUE, 
                   panel = function(x, y, subscripts, ...) {
                     x.bar <- mean(x, na.rm=TRUE)
                     the.model <- lm(y ~ x)
                     panel.xyplot(x, y, type="n")
                     
                     grid.polygon(x = c(min(x, na.rm=TRUE),
                                    min(x, na.rm=TRUE),
                                    max(x, na.rm=TRUE),
                                    max(x, na.rm=TRUE)),
                                  y = c(x.bar*(1-b0.ii), x.bar*(1+b0.ii),
                                    x.bar*(1+b0.ii), x.bar*(1-b0.ii)),
                                  gp = gpar(col = "light gray",
                                    fill = gray(0.9)),
                                  default.units = "native",
                                  draw=TRUE)
                     
                     panel.xyplot(x, y, col="dark gray")
                     
                     n <- sum(complete.cases(cbind(x,y)))
                     x.line <- sqrt(x.bar^2 +
                                    var(x, na.rm=TRUE) *
                                    (n - 1) / n)
                     
                     panel.arrows(x.bar, # Intercept
                                  predict(the.model,
                                          newdata=data.frame(x=x.bar)) +
                                  coef(summary(the.model))[1,2] *
                                  qt(1-alpha/2, df.residual(the.model)),
                                  x.bar, 
                                  predict(the.model,
                                          newdata=data.frame(x=x.bar)) -
                                  coef(summary(the.model))[1,2] *
                                  qt(1-alpha/2, df.residual(the.model)),      
                                  col="darkgrey",
                                  length=0.05, angle=90, code=3)

                     panel.arrows(x.bar,  # Slope
                                  predict(the.model,
                                          newdata=data.frame(x=x.bar)) +
                                  coef(summary(the.model))[2,2] *
                                  qt(1-alpha/2, df.residual(the.model)) *
                                  x.bar,
                                  x.bar, 
                                  predict(the.model,
                                          newdata=data.frame(x=x.bar)) -
                                  coef(summary(the.model))[2,2] *
                                  qt(1-alpha/2, df.residual(the.model)) *
                                  x.bar,      
                                  length=0.05, angle=90, col="black",
                                  code=3)

                     panel.abline(a=coef(summary(the.model))[1,1], b=1-b1.ii,
                                  col="black", lty=2)
                     panel.abline(a=coef(summary(the.model))[1,1], b=1+b1.ii,
                                  col="black", lty=2)
                     
                     panel.abline(coef(the.model))
                   },
                   strip = strip.custom(style = 3),
                   ...)
            )
    }

