#hiiiiiiiiiiiiiiii!!!!


#CI FOR MEANS
CImean <- function(xbar, sd, n, alpha) {
  ME<- (qt(1-alpha/2, n-1))*sd/sqrt(n)
  cat("The", 100*(1-alpha), "% confidence interval is (", xbar-ME, ",", xbar+ME, ").")
}

#CI FOR VARIANCES
CIvariance<- function(sampleVar, n, alpha) {
  upper_bound <- ((n-1)*sampleVar/qchisq(alpha/2, n-1))
  lower_bound <- ((n-1)*sampleVar/qchisq(1-(alpha/2), n-1))
  cat("We are", 100*(1-alpha), "% confident that the true variance is between", lower_bound, "and", upper_bound, ".")
}



test <- function() {
  
  cat("difjlijislg\n")
}