{
  n=as.integer(readline(prompt="Enter no."))
f=1
i=2
while(i<=n/2)
{
  if(n%%i==0)
  {
    f=0
    break
  }
  i=i+1
}
if(f==1){
  print(paste("Number is prime",n))
}
else
{
  print(paste("Number is not prime",n))
}
}
