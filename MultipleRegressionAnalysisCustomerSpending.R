#Creating tacko Dataframe
tacko.df <- read.csv("Tacko.csv")

#part a 
#Scatterplots
#Spending vs. freq
plot(tacko.df$Freq ~ tacko.df$Spending, main = "Spending vs. Freq", xlab = "Freq", ylab = "Spending (in dollars)")

#spending vs. last update
plot(tacko.df$Last_Update ~ tacko.df$Spending, main = "Spending vs. Last Update", xlab = "Last Update", ylab = "Spending (in dollars)")

#part b 
# Selecting the first 1000 records
tacko1000.df <- tacko.df[1:1000,]

#Selecting the first five variables 
select.var <- tacko1000.df[-c(6)]

#setting the sample seed to 1
set.seed(1)

#partition the data 50:50
train.rows <- sample(rownames(select.var), dim(select.var)[1]*0.5)
train.data <- select.var[train.rows,]

valid.rows <- setdiff(rownames(select.var),train.rows)
valid.data <- select.var[valid.rows,]

#Part c
#Multiple Regression Model 
reg <- lm(Spending~., data = train.data)
summary(reg)

#residuals analysis 
#predicted values for Y
pred_y_mr <- fitted(reg)
#standardized residual
residual_mr <- rstandard(reg)
#plot Residual vs. predicted 
plot(pred_y_mr, residual_mr, main = "Residual vs. Predicted Plot")

#multicollinearity 
library(car)
vif(reg)
sqrt(vif(reg))>5

#part e
library(forecast)

#use predict() to make predictions on a new set 
valid.lm.pred <- predict(reg,valid.data)
acc <- accuracy(valid.lm.pred, valid.data$Spending)
View(acc)

#part f
#Step wise regression backwards
reg.step.back <- step(reg, direction = "backward", data = train.data)
summary(reg.step.back)







