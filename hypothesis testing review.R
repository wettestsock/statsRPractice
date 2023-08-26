source("functions.R")

# REVIEW OF HYPOTHESIS TESTING 


#-------------------------------------------------------------------
#T TEST !!!!!!!!!!, can be single sample, 2 sample, or paired
# x = sample 1 data, (required)
# y = sample 2 data, (default NULL for 1 sample)
# my = alternate hypothesis, (default 0)
# conf.level = confidence level (default 0.95)
# alternative = c("two.sided", "less", "greater") (default two.sided)
# paired = paired t test or not (default FALSE)


#single:

singleSample <-c(301, 305, 312, 315, 318, 319, 310, 318, 305, 313, 305, 305, 305)
t.test(singleSample, mu = 310, conf.level=0.95, alternative = "greater")



#double::
sample1 <- c(310, 311, 310, 315, 311, 319, 310, 318, 315, 313, 315, 311, 313)
sample2 <- c(335, 339, 332, 331, 334, 339, 334, 318, 315, 331, 317, 330, 325)
t.test(sample1,sample2, mu= 0, conf.level=0.95 )



#paired :
before <- c(122, 124, 120, 119, 119, 120, 122, 125, 124, 123, 122, 121)
after <- c(123, 125, 120, 124, 118, 122, 123, 128, 124, 125, 124, 120)
t.test(before,after, mu = 0, paired = TRUE)
#---------------------------------------------------------