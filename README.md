# Midterm Project: Statistical Analysis Using R
This repository contains the completed midterm project for a business statistics course. The project involved analyzing multiple datasets using R to perform statistical modeling and predictive analytics. Below is an overview of the tasks, methods, and insights gained from this project.

## 📊 Project Overview
The midterm project had four major problems, each focusing on different statistical methods and analyses. The objectives included building predictive models, analyzing relationships between variables, and evaluating model performance. Here is a breakdown of the tasks:
 
### 1. Predicting Honda Civic Prices

**Dataset:** HondaCivic.csv, with 1436 rows and 9 selected variables (e.g., Price, Age, Mileage, HP, etc.).

**Tasks:**

Partitioned the data into training (70%), validation (20%), and testing (10%) sets.

Computed the correlation matrix for numerical predictors to check for multicollinearity.

Built a simple linear regression model to predict Price using the variable most correlated with Price.

Evaluated the model's performance and interpreted its findings.

### 2. Multiple Regression Analysis for Customer Spending

**Dataset:** Tacko.csv, with 2000 records on customer purchases.

**Tasks:**

Created scatterplots to assess linear relationships between Spending and two continuous predictors (FREQ, Last_Update).

Partitioned the data into training (500 records) and validation (500 records).

Built a multiple linear regression model to predict Spending using all predictors.

Evaluated the model using four performance criteria and discussed whether Gender significantly impacts spending.

Explored stepwise regression for predictor selection and explained the final model in context.

### 3. Principal Components Analysis (PCA) for Heart Health

**Dataset:** Heart.csv, with 303 records on patient health metrics.

**Tasks:**

Partitioned data into training (60%), validation (30%), and testing (10%) sets.

Computed a correlation matrix for quantitative predictors (Age, BP, Chol, HR).

Conducted PCA and identified the number of principal components to retain.

Analyzed the proportion of variance explained by the selected components and discussed normalization.

### 4. Logistic Regression for Graduate School Admissions

**Dataset:** Admission.csv, with 400 records on GRE, GPA, Rank, and Admission outcomes.

**Tasks:**

Partitioned data into training (200 records) and validation sets.

Built a logistic regression model to predict Admission using all predictors.

Explained the coefficients in the logistic regression equation and assessed the impact of GRE scores on admission chances.

Evaluated the model's performance using a confusion matrix, sensitivity, and specificity.

## 🛠 Technical Highlights
**Languages:** R for data analysis and statistical modeling.

**Methods Used:**

Simple and Multiple Linear Regression

Logistic Regression

Correlation Analysis

Principal Components Analysis (PCA)

Stepwise Regression

**Evaluation Metrics:**

Model performance evaluated using R-squared, p-values, confusion matrix, sensitivity, specificity, and other statistical metrics.

## 💡 Key Learning Outcomes
Understanding of model building and evaluation processes for regression and classification problems.

Importance of partitioning datasets into training, validation, and testing sets for unbiased performance evaluation.

Application of PCA to reduce dimensionality and analyze variance.

Gained practical experience in statistical programming and interpretation of real-world datasets.

## 📂 Repository Contents
`Midterm_Analysis.R`: R script containing the code for all analyses.

`Midterm_Report.docx`: Final report with R outputs and detailed explanations.

`Datasets/`: Folder containing CSV files for the problems (HondaCivic.csv, Tacko.csv, Heart.csv, Admission.csv).

