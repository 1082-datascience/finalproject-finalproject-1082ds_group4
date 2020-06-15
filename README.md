# < Pima Indians Diabetes Database-Predict the onset of diabetes based on diagnostic measures>

### Groups
* <蔡宗諺, 108753205>
* <葉冠宏, 108753208>
* <蔡承軒, 107354018>


### Goal

目標為預測該人是否為糖尿病患者
The objective of the dataset is to diagnostically predict whether or not a patient has diabetes.

### Demo 
Performance
```R
Rscript rproject.R --fold n --train data.csv --report performance.csv
```
* any on-line visualization

## Folder organization and its related information

### docs
* Your presentation, 1082_datascience_FP_Group4.pdf, by **Jun. 25**
* Any related document for the final project
  * papers
  * software user guide



### data

* Source
  * https://www.kaggle.com/uciml/pima-indians-diabetes-database
![kaggle](./data/kaggle.png)
* Input format：.csv
![data_format](./data/data_format.png)
* Data Features
  * Pregnancies: Number of times pregnant
  * Glucose:  Plasma glucose concentration a 2 hours in an oral glucose tolerance test
  * BloodPressure:  Diastolic blood pressure (mm Hg)
  * SkinThickness:  Triceps skin fold thickness (mm)
  * Insulin:  2-Hour serum insulin (mu U/ml)
  * BMI:  Body mass index (weight in kg/(height in m)^2)
  * DiabetesPedigreeFunction: Diabetes pedigree function
  * Age:  Age (years)
![features](./data/features.png)
* Any preprocessing?
  * Handle missing data
  * Visualize the data and find outliers
  * Delete outlier
  * Check each features (abnormal value)
  * Shuffle the data
  * Build Correlation matrix without missing value
![correlation matrix](./data/correlation_matrix.png)
  * Select different feature combinations
    * All Features
    * All Features without Insulin & DiabetesPedigreeFunction
    * All Features without Insulin & DiabetesPedigreeFunction & Pregnancies
    * All Features without Insulin & DiabetesPedigreeFunction & Age

### code

* Which method do you use?
  * Logistic Regression
  * Decison Tree
* What is a null model for comparison?
  * All output is 0 ,the model accuracy is 65%.
* How do your perform evaluation? ie. Cross-validation, or extra separated data
  * Split data into 3 part(Training/Validation/Testing)
  * K-fold cross validation

### results

![accuracy](./data/accuracy.png)
![kfold](./data/kfold.png)

* Which metric do you use 
  * precision, recall, R-square
* Is your improvement significant?
  * 
* What is the challenge part of your project?

## Reference
* Code/implementation which you include/reference (__You should indicate in your presentation if you use code for others. Otherwise, cheating will result in 0 score for final project.__)
* Packages you use
  * library(rpart)
  * library(caret)
  * library(party)
  * library(varhandle)
  * library(ggplot)
  * library(corrplot)
  * library(Hmisc)
  * library(ggplot2)
  * library(ggcorrplot)

  
* Related publications


