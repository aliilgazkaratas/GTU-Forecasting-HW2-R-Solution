"""
z.test=c(rnorm(45, mean=19.67,sd=4.2))
Z=qnorm(1-0.05/2)
lower_limit=mean(z.test)-(Z*(sd(z.test))/sqrt(length(z.test)))
upper_limit=mean(z.test)+(Z*(sd(z.test))/sqrt(length(z.test)))                      
"""
#Q1

#a
library(BSDA)
data=rnorm(45, mean =19.67,sd= 4.2)
z.test(data,conf.level = 0.95,sigma.x=4.2,mu=19.67)
#b
t.test(data,mu=19.67)


#Q2
datacat=rnorm(73, mean =3.97,sd= 2.21)
t.test(datacat,mu=3.5,alternative = "two.sided")
