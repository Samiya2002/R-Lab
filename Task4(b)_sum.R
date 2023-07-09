sum <- function(n) 
{
  if(n<=0)
  {
    return(n)
  }
  else
  {
    return(n+sum(n-1))
  }
}
a=as.integer(readline(prompt = "Enter no."))
if(a<0)
{
  print("Enter +ve no")
} else
{
  print(sum(a))
}