# Homework 6

# 1: Write a Function
## 1a: Write a function that calculates (x,x^2,...x^10) for itneger values
powers_of_x <- function(x)
{
  product <- 1
  i <- 1
  while(i < 11)
  {
    product <- product*x
    print(product )
    i=i+1
  }
}
## 1b: test function with a variety of inputs
powers_of_x(2)
powers_of_x(15)
powers_of_x(4)

# 2: Write a function
## 2a: write a function to see if two inputs are both numeric
     # if both are numeric, calculate a+b. if not, print the given line
my_function <- function(a,b)
{
  if(is.numeric(a) == TRUE && is.numeric(b)== TRUE)
  {return(a+b)}
    else 
      {print("the arguments were not both numeric")}
}
## 2b: test the function to see if it works
my_function(3,6)  # returns 9
my_function(2,"dog")  # prints "the arguments were not both numeric"

# 3: ifelse function- using the faithful dataset
   # write a code that returns short if eruption <3 min and long if >= 3 min
data("faithful")
View(faithful)
ifelse(faithful$eruptions <3, "short","long")

#4: write a for loop that prints the first 4 elements of a vector
a <- c(16,7,4,8,3,21)
for(i in 1:4)
{print(a[i])}

# 5: write a repeat loop that breaks off incrementation after 6 loops
   # and prints x at every increment
x<- c("PSTAT")
i <- 1
repeat
{
  print(x)
  i=i+1
  if(i >6)
  {break}
}

# 6: write a while loop that prints square of odd numbers from 13-17
b <- 13
while(b <= 17)
{
  if(b%%2 !=0)
  {
    print(b*b)
    b=b+1
  }
  else{b=b+1}

}

# 7: using nested for loops, create a 3x2 matrix filled by column with elements 1:6
matrix <- matrix(1:6, nrow=3,ncol=2,byrow= FALSE)
matrix
for(row in 1:3)
{
  for(col in 1:2)
  {
    if(matrix[row,col]==1 | matrix[row, col]==5)
    {
      print(matrix[row,col])
    }
  }
}

# 8: writing a function to count and print how many even and odd numbers 
   # there are in a vector
x <- c(2,5,3,9,8,11,6)
even_odd_counter <- function(x)
{
  counteven<- 0
  countodd <- 0
  for(i in x){
    if(i%%2==0)
      counteven=counteven+1 else
        countodd=countodd+1
  }
  cat(counteven,"even numbers, ")
  cat(countodd, "odd numbers")
}
even_odd_counter(x)

#9: in a separate pdf file