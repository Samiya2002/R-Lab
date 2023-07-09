path="C://Users/Perfect/OneDrive/Desktop/R programs/credit-g_csv (1).csv"
data=read.csv(path)
data
data$age
dim(data)
list(data$age, main="histogram")
plot(data$age)
summary(data$age)
