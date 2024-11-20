#Part a
#insert csv
hondacivic.df <- read.csv("HondaCivic.csv")
View(hondacivic.df)

#selecting variables 
selected.var <- hondacivic.df[-c(1,2,5,11,12)]
View(selected.var)

#Part b
#setting seed to 1
set.seed(1)
#selecting only 1400 observations 
selected.var.df <- selected.var[1:1400,]

#Part c
#Partitioning: training 70%
train.rows <- sample(rownames(selected.var.df),dim(selected.var.df)[1]*0.7)
train.data <- selected.var.df[train.rows,]

#Partitioning: validation 20%
valid.rows <- sample(setdiff(rownames(selected.var.df),train.rows),dim(selected.var.df)[1]*0.2)
valid.data <- selected.var.df[valid.rows,]

#Partitioning: testing
test.rows <- setdiff(rownames(selected.var.df),union(train.rows,valid.rows))
test.data <- selected.var.df[test.rows,]

#Part e
#Correlation Maxtrix

selected.cor <- train.data[-c(5)]
CM1 <- cor(selected.cor)
View(CM1)
round(cor(CM1),3)

library(corrplot)
corrplot(CM1, type = "upper", method = "number", tl.srt=45, tl.col = "black")

#Part f
#Simple regression 

simplereg <- lm(Price ~ Age, data = train.data)
View(simplereg)
summary(simplereg)

#Predicted values 
pred_y_sr <- fitted(simplereg)

#Standardized residual 
residual_sr <- rstandard(simplereg)

#residual vs. predict

plot(pred_y_sr, residual_sr, main = "Residual vs. Predicted Plot")


