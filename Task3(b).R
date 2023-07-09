{
  n=as.integer(readline(prompt = "Enter no"))
  if(n==0)
  {
    print("No Factor")
  }
  else
  {
    for(i in 1:n)
    {
      if(n%%i==0)
        print(i)
    }
  }
}