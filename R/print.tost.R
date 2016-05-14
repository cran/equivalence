print.tost <- function(x, ... ) {
    NextMethod()
    cat("Epsilon:", x$epsilon, "\n")
    cat(format(100 * attr(x$tost.interval, "conf.level")),
        " percent two one-sided confidence interval (TOST interval):\n",
        " ", paste(format(c(x$tost.interval[1L], x$tost.interval[2L])),
                   collapse = " "), "\n", sep = "")
    cat("Null hypothesis of statistical difference is:", x$result, "\n")
    cat("TOST p-value:", x$tost.p.value, "\n")
    invisible(x)
}


