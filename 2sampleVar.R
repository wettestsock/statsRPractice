#  2 SAMPLE F TEST  

df1<- 5
df2<- 2

fstat<- 19.3 # f statistic


#p value of the difference in variances is ......
pf(19.3, df1, df2, lower.tail=FALSE) 

# the critical value associated with the probability of 0.05 is....
qf(0.05, df1,df2,lower.tail = FALSE)


#conditions required for valid inferences :::

#   the samples are random and independent
#   both populations are normally distributed

#note: the f test is NOT robust, has to be normal
# very sensitive to skewness

#use sample variances and compare it to F distribution






#HYPOTHESIS TESTING FOR INDEPENDENT VARIANCES
# the test is always a right tail, just switch which variance is in the numerator 

#F test statistic = larger variance's df / smaller variance's df
# F test statistic = sample standard deviation squared 1 / sample standard deviation squared 2

#null hypothesis : H0 =  pop var 1 = pop var 2 OR pop var 1/ pop var 2 = 1

#alternate hypothesis : Ha = pop var 1 != < > pop var 2 OR pop var 1 / pop var 2 != < > 1


#lower tail t test (less than)
# test statistic, df1, df2, lower.tail
pf(0.27, 7,9,lower.tail = TRUE)


#upper tail f test

pf(3.29,7,9,lower.tail=FALSE)


#two tailed test
# assume s1 > s2  and use a right side test

#ex. compare 0.01 significance if less variability 

lowEarning = c(28300, 32500, 32800, 32800, 32800, 33200, 33400, 33500, 34000, 34100)
highEarning = c(94500, 91100, 88000, 79600, 78100, 77900, 77300, 76900, 76800, 76100)

#  alternative = "greater", "less", "two.sided" 
var.test(highEarning,lowEarning, alternative ="greater", conf.level = 0.95)
var.test(highEarning,lowEarning, alternative ="two.sided", conf.level = 0.95)






