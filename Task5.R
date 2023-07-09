fibo<- function(n)
{
  if(n<=1)
  {
    return(n)
  }
  else
  {
    return(fibo(n-1)+fibo(n-2))
  }
}
n1=as.integer(readline(prompt = "Enter a number"))
if(n1<=0)
{
  print("Enter a positive number")
}else
{
  for(i in 0:(n-1))
  {
    print(fibo(i))
  }
}