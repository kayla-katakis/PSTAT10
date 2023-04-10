options(prompt = "R> ")
# 1. create a vector x containing the following elements
x <- c(5,7,3,10,1,7,19,5,2)
x
# extract elements and find attributes of x
#question 1a
x[4]
#question 1b
x[5:7]
#question 1c
median(x)
# question 1d
length(x)

# 2. using the rep() function, create the following vectors
#question 2a
rep(6, times= 7)
# question 2b
rep(c(3,4,6), each= 3)

# 3. difference between p+q and sum(p+q) ?
p <- c(2,3,4,6,6)
q <- c(7,2,4,3,2)
p+q
sum(p+q)
# p+q returns a vector in which each component is the sum of the respective components of p and q
# sum(p+q) returns an integer that is the sum of all of the components of both vectors

# 4. write the following vector using the colon operator
a <- -50:-54
b <- -53:-50
c <- c(a,b)
c

# 5. use the rep() function to create the sequence 1,1,2,2,3
y <- rep(1:3, length= 5, each= 2)
y
