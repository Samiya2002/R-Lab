fibo<-function(n)
{
  if (n<=1)
  {
    return(n)
  }
  else
  {
    return(fibo(n-1)+fibo(n-2))
  }
}
n1=as.integer(readline(prompt = "Enter no"))
if(n1<0)
{
  print("Enter a +ve no.")
}else
{
  for(i in 1:n1-1)
  {
    print(fibo(i))
  }
}