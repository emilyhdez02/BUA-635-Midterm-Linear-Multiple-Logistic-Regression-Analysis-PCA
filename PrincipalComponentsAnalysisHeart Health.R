#Inserting csv, creating data frame
heart.df <- read.csv("Heart.csv")

#Part A
#Partitioning training validation and testing  60:30:10

train.rows <- sample(rownames(heart.df), dim(heart.df)[1]*0.6)
train.data <- heart.df[train.rows,]

valid.rows <- sample(setdiff(rownames(heart.df),train.rows), dim(heart.df)[1]*0.3)
valid.data <- heart.df[valid.rows,]

test.rows <- setdiff(rownames(heart.df), union(train.rows, valid.rows))
test.data <- heart.df[test.rows,]

#Part B
#Correlation matrix of Age, BP, Chol and HR
CM1 <- cor(train.data[c("Age", "BP", "Chol", "HR")])
View(CM1)

library(corrplot)
corrplot(CM1, type = "upper", method = "number", tl.srt = 45, tl.col = "black")


#Part C
#Principle Component Analysis on the training data 
pc2 <- prcomp(train.data,)
print(pc2)

#Part D
#Principle Component Scores 
pc_scor <- pc2$x
print(pc_scor)
head(pc_scor)
summary(pc_scor)

#Part E
#Principle Component Summary 
summary(pc2)
