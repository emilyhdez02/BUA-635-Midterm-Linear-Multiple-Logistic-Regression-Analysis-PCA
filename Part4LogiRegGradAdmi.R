#Reading csv, creating admission data frame and removing a categorical variable 
admission.df <- read.csv("Admission.csv")
admission.df <- admission.df[,-c(1)]

#Part a
#Setting Seed to 1 
set.seed(1)

#Partitioning the data 50:50
train.rows <- sample(rownames(admission.df),dim(admission.df)[1]*0.5)
train.data<- admission.df[train.rows,]

valid.rows <- setdiff(rownames(admission.df),train.rows)
valid.data <- admission.df[valid.rows,]

#Part B
#Installing packages: caret, ggplot2. and lattice
library(caret)
library(ggplot2)
library(lattice)

#Logistic Regression Analysis 
multi.log <- glm(Admission ~ GRE+GPA+Rank, data = admission.df, family="binomial")
summary(multi.log)

#Part D
#Confusion Matrix
multi.log.pred <- predict(multi.log, newdata = train.data, type = "response")
train.data$pred.glm = ifelse(multi.log.pred > 0.5, "1", "0")
train.data$pred.glm = as.factor(train.data$pred.glm)

str(train.data$pred.glm)

train.data$Admission = as.factor(train.data$Admission)
str(train.data$Admission)

confusionMatrix(train.data$Admission,train.data$pred.glm)
View(train.data)

#Part F
write.csv(train.data, "MidtermPart4TrainData")
