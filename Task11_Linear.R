# Simple Linear Regression
path='C://Users/Perfect/OneDrive/Desktop/R programs/Salary_Data.csv'
dataset = read.csv(path)
dataset$YearsExperience
install.packages('caTools')
library(caTools)
split = sample.split(dataset$Salary, SplitRatio = 0.7)
trainingset = subset(dataset, split == TRUE)
testset = subset(dataset, split == FALSE)
glm.r= glm(formula = Salary ~ YearsExperience,data = trainingset)
coef(glm.r)
ypred = predict(glm.r, newdata = testset)
#install.packages("ggplot2")
library(ggplot2)
ggplot() + geom_point(aes(x = trainingset$YearsExperience,y = trainingset$Salary), colour = 'red') +
geom_line(aes(x = trainingset$YearsExperience, y = predict(glm.r, newdata = trainingset)), colour = 'blue') +
ggtitle('Salary vs Experience (Training set)') +
xlab('Years of experience') +
ylab('Salary')
ggplot() +geom_point(aes(x = testset$YearsExperience, y = testset$Salary),colour = 'red') +
geom_line(aes(x = trainingset$YearsExperience,y = predict(glm.r, newdata = trainingset)),colour = 'blue') +
ggtitle('Salary vs Experience (Test set)') +
xlab('Years of experience') +
ylab('Salary')