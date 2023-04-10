# Worksheet 11

#1: for loop that prints the cube of numbers 1 through 7
x <-c(1:7)
for(i in x)
{
  print(i*i)
}

#2: while loop to find number of terms requires for 1*2*3*4... to exceed 100000
target <- 100000
product <-1
count <- 0
while(product <= target)
{
  count=count+1
  product=product*count
}  # takes 9 terms to exceeded 100,000

#3: repeat loop to print pstat 5 times
times <- 1
repeat
{
  print("PSTAT 10")
  times=times+1
  if(times >5)
  {break}
}

#4 write a while loop to print increments from 105, using 'next' to skip 3
i <- 1
while( i<6)
{
  print(i)
  i=i+1
  if( i==3)
  {
    i=i+1
    next
  }
}

#5: write a function that returns the cube of a number
get_cubed <- function(x)
{
  cubed <- x*x*x
  return(cubed)
}
get_cubed(4)  # returns 64. it works! :D

#6: write a function that simulates rolling n fair six-sided die
  # returning the total sum scored. use the function to simulate 99 rolls
roll_the_dice <- function(n)
{
  i <- 1
  sum <- 0
  x <- c(1:6)
  while(i <= n)
  {
    sum<-sum+sample(x, 1, replace=TRUE,prob=NULL)
    i=i+1
  }
  return(sum)
}
roll_the_dice(99) 

