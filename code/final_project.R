install.packages('Hmisc')
install.packages("corrplot")
install.packages('ggcorrplot')
library(corrplot)
library(Hmisc)
library(ggplot2)
library(ggcorrplot)
library(rpart)
diabete <- read.csv('/Users/tsaichenghsuan/Desktop/資料科學/diabetes.csv',header = T)
diabete$Outcome <- as.factor(diabete$Outcome)
diabete2 <- diabete[-which(diabete$SkinThickness==0 | diabete$Insulin == 0),]
diabete5 <- diabete[-which(diabete$SkinThickness==0 | diabete$Insulin == 0 | diabete$Glucose==0|diabete$BloodPressure==0|diabete$BMI==0),]
summary(diabete)
diabete2$Outcome <- as.factor(diabete2$Outcome)
r1 = cor(as.matrix(diabete5))
d1 = as.data.frame(round(r1,2))
row.names(d1) = c('X1','X2','X3','X4','X5','X6','X7','X8','X9')
colnames(d1) = c('X1','X2','X3','X4','X5','X6','X7','X8','X9')
d1
rcorr(as.matrix(diabete2))
corrplot(r1, type = "upper", order = "hclust", tl.col = "black")
ggcorrplot(r1, hc.order = TRUE, type = "lower",
           lab = TRUE)
plot(y = diabete5$BMI,x = diabete5$SkinThickness,xlim=c(0,70),ylim = c(0,70))
g1 = lm(BMI~SkinThickness,data = diabete5)
fBMI = function(x){20.147+0.444*x}
summary(g1)
par(new=T)
curve(fBMI,col = 'red',xlim=c(0,70),ylim = c(0,70))

#EDA

ggplot(data = diabete2,aes(x=Outcome,y=Pregnancies))+
  geom_boxplot()

ggplot(data =  diabete2, aes(x = Pregnancies)) +
  geom_histogram(color = "black",binwidth = 4, aes(fill =Outcome),position = 'fill')


ggplot(data = diabete2,aes(x=Outcome,y=Glucose))+
  geom_boxplot()

diabete3 = diabete2[-which(diabete2$Glucose==0),]

ggplot(data =  diabete3, aes(x = Glucose)) +
  geom_histogram(color = "black",binwidth = 15, aes(fill =Outcome),position = 'fill')




ggplot(data = diabete3,aes(x=Outcome,y=BloodPressure))+
  geom_boxplot()

ggplot(data =  diabete3, aes(x = BloodPressure)) +
  geom_histogram(color = "black",binwidth = 30, aes(fill =Outcome),position = 'fill')


ggplot(data = diabete3,aes(x=Outcome,y=SkinThickness))+
  geom_boxplot()

ggplot(data =  diabete3, aes(x = SkinThickness)) +
  geom_histogram(color = "black",binwidth = 10, aes(fill =Outcome),position = 'fill')

ggplot(data = diabete2,aes(x=Outcome,y=Insulin))+
  geom_boxplot()

ggplot(data =  diabete2, aes(x = Insulin)) +
  geom_histogram(color = "black",binwidth = 50, aes(fill =Outcome),position = 'fill')

ggplot(data = diabete2,aes(x=Outcome,y=BMI))+
  geom_boxplot()

diabete4 = diabete2[-which(diabete2$BMI == 0 ),]

ggplot(data =  diabete4, aes(x = BMI)) +
  geom_histogram(color = "black",binwidth = 10, aes(fill =Outcome),position = 'fill')

ggplot(data = diabete2,aes(x=Outcome,y=DiabetesPedigreeFunction))+geom_boxplot()

ggplot(data =  diabete4, aes(x = DiabetesPedigreeFunction)) +
  geom_histogram(color = "black",binwidth = 0.3, aes(fill =Outcome),position = 'fill')

ggplot(data = diabete2,aes(x=Outcome,y=Age))+geom_boxplot()

ggplot(data =  diabete4, aes(x = Age)) +
  geom_histogram(color = "black",binwidth = 10, aes(fill =Outcome),position = 'fill')

lm(Glucose~Insulin,data = diabete2[-which(diabete2$Glucose==0),])
fGl = function(x){99.1+0.151*x}


