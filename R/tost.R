# $Id: tost.data.R,v 1.2 2005/09/26 02:29:00 andrewr Exp $

"tost" <-
function(x, y = NULL, alpha = 0.05, epsilon, ...) {
  if(length(epsilon) > 1)
    stop("Please use half-length to express intervals of indifference")
  tt <- t.test(x, y, conf.level = 1 - alpha, ...)
  ttu <- t.test(x, y, conf.level = 1 - alpha, alternative = "less", ...)
  ttl <- t.test(x, y, conf.level = 1 - alpha, alternative = "greater", ...)
  if (ttu$conf.int[2] < epsilon & ttl$conf.int[1] > -epsilon) 
    result <- "rejected"
  else result <- "not rejected"
  mean.diff <- ifelse(length(tt$estimate) == 1,
                      as.numeric(tt$estimate),
                      as.numeric(tt$estimate[1] - tt$estimate[2]))
  se.diff <- as.numeric((tt$conf.int[2] - tt$conf.int[1]) /
                        qt(1 - alpha, df = tt$parameter)) / 2
  pv <- as.numeric(pt((epsilon - abs(mean.diff)) / se.diff,
           tt$parameter, lower.tail = FALSE))
  test.ci <- c(ttl$conf.int[1], ttu$conf.int[2])
  return(list(mean.diff = mean.diff,
              se.diff = se.diff,                       
              alpha = alpha,
              ci.diff = tt$conf.int,
              df = tt$parameter,
              epsilon = epsilon,
              result = result,
              p.value = pv,
              tost.interval = test.ci))
}

