# < Pima Indians Diabetes Database-Predict the onset of diabetes based on diagnostic measures>

### Groups
* <蔡宗諺, 108753205>
* <葉冠宏, 108753208>
* <蔡承軒, 107354018>


### Goal

目標為預測該人是否為糖尿病患者

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
* Input format：.csv
* Any preprocessing?
  * Handle missing data
  * Visualize the data and find outliers
  * Delete outlier
  * Check each features (abnormal value)
  * Shuffle the data
  * Build Correlation matrix without missing value
  * Select different feature combinations


### code

* Which method do you use?
  * Logistic Regression
  * Decison Tree
* What is a null model for comparison?
* How do your perform evaluation? ie. Cross-validation, or extra separated data
  * Split data into 3 part(Training/Validation/Testing)
  * K-fold cross validation

### results

* Which metric do you use 
  * precision, recall, R-square
* Is your improvement significant?
* What is the challenge part of your project?

## Reference
* Code/implementation which you include/reference (__You should indicate in your presentation if you use code for others. Otherwise, cheating will result in 0 score for final project.__)
* Packages you use
  * library(rpart)
  * library(caret)
  * library(party)
  * library(varhandle)
  * library(ggplot)
  

  

* Related publications


