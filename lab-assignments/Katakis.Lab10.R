# Worksheet 10

# 1: uniform distributions
## 1a: pdf of X and 0,1,...,6
x <- 1:6
pdf1 <- dunif(x,min=1,max=5)
pdf1
## 1b: probability that X is between 2.0 and 3.5
punif(3.5,min=1,max=5)-punif(2.0,min=1,max=5)

# 2: normal distribution mean=80 and sd=12
## 2a: probability between 65 and 95
pnorm(95,mean=80,sd=12)-pnorm(65,mean=80,sd=12)
## 2b: probability of less than 74
pnorm(74,mean=80,sd=12)

#3: normal distribution of IQ with mean 100 and sd 16
## 3a: percent population with IQ in interval (86,114)
percentage <- (pnorm(116,mean=100,sd=16)-pnorm(84,mean=100,sd=16))*100
percentage
## 3b: what IQ needed for top 2 percent?
qnorm(.980, mean=100,sd=16,lower.tail=TRUE)

# 4: random lotto, 5 numbers drawn from 100
## 4a: reproducible results each week and generate winning numbers for first week
set.seed(66)
sample(100,5,replace=TRUE)
## 4b: generate winning numbers for second week of the lottery
sample(100,5,replace=TRUE)

# 5:
## 5a: generate 100 normal variates with mean 75 and sd 10
variates <- rnorm(100, mean=75,sd=10)
##5b: how many of the above variates are with +/- 2 sd of the mean
variates_z <- (variates-75)/10
length(which(abs(variates_z) <= 2))

# 6: 
## 6a: prob that pg 427 has 0 errors
dbinom(0,750,1/500)
## 6b: prob that pg 427 has exactly 4 errors
dbinom(4,750,1/500)
