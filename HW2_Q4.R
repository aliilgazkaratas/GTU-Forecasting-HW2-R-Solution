mydata = read.csv("C:\\Users\\ilgaz\\OneDrive\\Masaüstü\\IE 310\\HW\\IE 310 Assignment 2\\Poisson_Dataset.csv")
mydata
names(mydata)
mydata = subset(mydata, select = c(time, poison, treat))
names(mydata)
mydata$poison=order(mydata$poison,decreasing = FALSE)
mydata
# H0 : μ(time_of_firstgroup)=μ(time_of_secondgroup)=μ(time_of_thirdgroup)=μ(time_of_fourthgroup)
# H1 : μ is different for at least one of them.

#Step -1
str(mydata$poison)
#Step -2
mean(mydata$poison)
median(mydata$poison)
summary(mydata$poison)
sd(mydata$poison)
var(mydata$poison)
quantile(mydata$poison)
#Step -3
boxplot(mydata$poison,main="Box Plot for Poison",
        col="pink",border="black",
        horizontal = TRUE,
        notch = TRUE)
#Step -4
model1=lm(poison~treat+time,data = mydata)
anova(model1)

#step -5

