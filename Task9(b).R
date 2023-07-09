path="C://Users/Perfect/OneDrive/Desktop/R programs/credit-g_csv (1).csv"
data=read.csv(path)
data
data$age
mean=mean(data$age)
ts=sd(data$age)
tmin=mean-(3*ts)
tmax=mean+(3*ts)
data$age[which(data$age<tmin | data$age>tmax)]
