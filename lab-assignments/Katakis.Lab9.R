# Worksheet 9
#1: binomial distribution
dbinom(5,size=8, prob=.2)

# 2: simulation
set.seed(427)
rbinom(20, size=5,prob=0.2)

#3 simulation: fair 6 sided die, looking for # of 3's
rbinom(5,size=1,prob=1/6)

# 4:sample code:
k<- c(1:30)
plot(k,dbinom(k,size=30,prob=.15),type="h")
plot(k,dbinom(k,size=30,prob=.4),type="h")
par(mfrow=c(2,1)) # 2 rows, 1 column

#4: plotting pmf of a binomial distribution
##4a: prob of 3 successes in 10 trials with prob of success=0.4. plot pmf
pmf1 <- dbinom(1:10, 10, 0.4)
plot(pmf1,type="h", xlab= "# successes in 10 trials", ylab= "probability")  
### interested in the value of approx 0.21

##4b: same plot with 20 trials instead of 10. probability of 5 successes
pmf2 <- dbinom(1:20,20,0.4)
plot(pmf2,type="h", xlab= "# successesin 20 trials", ylab= "probability")
###interested in value of approx 0.075

##4c: create side by side plots
par(mfcol=c(1,2))
plot(pmf1,type="h", xlab= "# successesin 10 trials", ylab= "probability")
plot(pmf2,type="h", xlab= "# successes in 20 trials", ylab= "probability")

#5: the set.seed function is used when you want to create the same set of data
#   each time the code is run.