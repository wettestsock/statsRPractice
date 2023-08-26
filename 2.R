

#include functions.R for functions
source("functions.R")


# LESSON 2 REVIEW OF CONFIDENCE INTERVALS
# CI : interval of plausible values for a characteristic

#CI IN R 

xbar <- 10.5
s <- 2.5
n <- 20
alpha <- 0.05

#critical value
t_critical <- qt(1-alpha/2, n-1)

#ME
ME <- t_critical*s/sqrt(n)

#make confidence interval 
lower_bound<-xbar - ME
upper_bound<-xbar + ME







sd(c(93,98,106,92,81,71,87))
mean(93,98,106,92,81,71,87)
CImean(93, 11.42679,7,0.05)
CImean(mean(94,98,107,92,81,72,87), sd(c(94,98,107,92,81,72,87)), 7, 0.1)

data = c(19.36,18.12,18.13,16.12,15.7,14.02,15.83,17,13.96,15.94,14.04,16.2)
sd(data)
variance <- var(data)


2*pchisq(18.8,50,lower.tail= FALSE)
sd(158.2)
data<- c(15.83,17.83,18.12,16.2,17,13.96,18.13,14.02,15.76,19.36,15.7,16.55)
mean(data)
sd(data)
2*pchisq(10.81, 9, lower.tail = FALSE)

pchisq(185.0816,239,lower.tail = FALSE)

test()

data<- c(85,90,94,89,90,93,95,96,92,93,93,95)

CIvariance(var(data),12, 0.05)




#-------------------------------------------------------------------
#T TEST !!!!!!!!!!, can be single sample, 2 sample, or paired
# x = sample 1 data, (required)
# y = sample 2 data, (default NULL for 1 sample)
# my = alternate hypothesis, (default 0)
# conf.level = confidence level (default 0.95)
# alternative = c("two.sided", "less", "greater") (default two.sided)
# paired = paired t test or not (default FALSE)


#single:
t.test(c(301, 305, 312, 315, 318, 319, 310, 318, 305, 313, 305, 305, 305), mu = 310, conf.level=0.95, alternative = "greater")



#double::
sample1 <- c(310, 311, 310, 315, 311, 319, 310, 318, 315, 313, 315, 311, 313)
sample2 <- c(335, 339, 332, 331, 334, 339, 334, 318, 315, 331, 317, 330, 325)
t.test(sample1,sample2, mu= 0, conf.level=0.95 )



#paired :
before <- c(122, 124, 120, 119, 119, 120, 122, 125, 124, 123, 122, 121)
after <- c(123, 125, 120, 124, 118, 122, 123, 128, 124, 125, 124, 120)
t.test(before,after, mu = 0, paired = TRUE)
#---------------------------------------------------------