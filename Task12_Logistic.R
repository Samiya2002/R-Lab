# Simple Linear Regression
# Importing the dataset
path='C://Users/Perfect/OneDrive/Desktop/R programs/Salary_Data.csv'
dataset = read.csv(path)
dim(dataset)
dataset$Salary
dataset$YearsExperience
#install.packages('caTools')
library(caTools)
split = sample.split(dataset$Salary,SplitRatio = 0.7)
trainingset = subset(dataset,split = TRUE)
testset = subset(dataset,split = FALSE)
glm.r = glm(formula = Salary~YearsExperience,data = trainingset)
coef(glm.r)
Ypred = predict(glm.r,newdata = testset)
Ypred
library(ggplot2)
ggplot()+geom_point(aes(x = trainingset$YearsExperience,y=trainingset$Salary),color = 'red')+
  geom_line(aes(x = trainingset$YearsExperience,y=predict(glm.r,newdata = trainingset)),color = 'blue')+
  ggtitle('Salary vs Years of experience')+xlab('Yoe')+ylab('salary')
ggplot()+geom_point(aes(x = testset$YearsExperience,y=testset$Salary),color = 'red')+
  geom_line(aes(x = trainingset$YearsExperience,y=predict(glm.r,newdata = trainingset)),color = 'blue')+
  ggtitle('Salary vs Years of experience')+xlab('Yoe')+ylab('salary')

