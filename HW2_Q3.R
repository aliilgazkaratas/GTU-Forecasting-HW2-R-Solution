# a
hous=read.csv("C:\\Users\\ilgaz\\OneDrive\\Masaüstü\\IE 310\\HW\\IE 310 Assignment 2\\Housing.csv")
hous
model=lm(Price~Taxes+Size+Bedrooms+Baths+Lot,data=hous)
par(mfrow = c(2, 2))
plot(model)
summary(model)
# b
head(hous)
#define model with all predictors
all = lm(Price ~ Taxes+Size+Bedrooms+Baths+Lot, data=hous)
#perform backward stepwise regression
backward = step(all, direction='backward', scope=formula(all), trace=0)

#view results of backward stepwise regression
backward$anova
#view final model
backward$coefficients
summary(backward)
# c
#define new observation
new = data.frame(Taxes=c(1360), Bedrooms=c(3), Baths=c(2), Size=c(1240), Lot=18000)
#use fitted model to predict the response value for the new observation
predict(model,new)
