# Worksheet 8

# 1: using the sample/set.seed functions
# 1a: create vector w elements 5:20
x <- c(5:20)
# create a reproducible sample of 5 integers
set.seed(5)
x_sample <- sample(x,5, replace=TRUE) # (i) the sample can have repeated values
x_sample2 <- sample(x,5,replace=FALSE) # (ii) the sample cannot have repeated values

# 2: probability distributions
outcomes <- c(1,2,3,4,5)
probabilities <- c(0.0,NA,0.4,0.1,0.03)
##2a: find the missing value
y <-sum(probabilities, na.rm=TRUE)
missing_value <- 1-y
## 2b: P(X < 4)
probabilities2 <- c(0.0,missing_value,0.4,0.1,0.03)
cumsum(probabilities2)[3]
## 2c: find the mean of random variable X
meanX <- sum(outcomes*probabilities2)
## 2d: construct the cdf of X
CumulativeX <- cumsum(probabilities2)


