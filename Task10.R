library('ggplot2')
data()
x<- iris
s=dim(x)
summary(x)
head(x)
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length))+geom_point()
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species))+geom_point()
ggplot(iris,aes(x=Sepal.Length,y=Petal.Length,col=Species,shape=Species))+geom_point()
