# Homework 5

#1: uniform distribution of processing times between 4 and 10 days
  # find the probability that the office will take less than 8 days
punif(8, min=4,max=10)

#2: probability of choosing 3 or more colorblind men in 9 trials, p=0.08
  # this is a binomial distribution
pbinom(9, 9, 0.08)-pbinom(2,9,0.08)

#3: variable X normally distributed with mean 83 and sd 11
## 3a: probability of between 61 and 94
pnorm(94,83,11)-pnorm(61,83,11)
## 3b: probability of less than 74
pnorm(74,83,11)
## 3c: probability of greater than 101
pnorm(101,83,11,lower.tail=FALSE)

#4: medical insurance problem normally distributed with mean cost $775 and sd $150
  # find the probability of less than $1000
pnorm(1000,775,150)

#5: simulate rolling a fair six sided die 100 times. write code to determine how many 6's
rbinom(1000,1,prob=1/6)  # a 1 represents rolling a six

# 6: working with "question7.csv"
## 6a: save file as dataset in R
studentdata <- read.csv("Question7.csv")
## 6b: histogram of heights
hist(studentdata$height, main=toupper("histogram of student height"),
     xlab= "Height (centimeters)")
## 6c: check 'heights' for normality
qqnorm(studentdata$height)
qqline(studentdata$height)
### based on the image provided by qqnorm/qqline, we can assume the 'heights' is normal

# 7: using standard normal distribution, find A so that:
## 7a: P(z<A)=0.83
qnorm(0.83,0,1)
## 7b: P(z>A)=0.0064
qnorm(0.0064,0,1,lower.tail=FALSE)

# 8: men's height normally distributed with mean 69.0 and sd 2.8
   # women's height normally distributed with mean 63.6 and sd 2.5
## 8a: percentage of men who have to duck through a 72 inch doorway (height greater than 72)
(pnorm(72, 69.0,2.8,lower.tail=FALSE))*100
## 8b: percentage of women who must duck in a 72 inch doorway
(pnorm(72,63.6,2.5,lower.tail=FALSE))*100
## 8c: door height that would allow at least 95% men to walk through 72 inch door w/o ducking
qnorm(.95,69.0,2.8)

# 9: determining whether a scenario is a binomial distribution
## 9a: This scenario would have a binomial distribution because it has all 4 criteria.
## 9b: This would not be a binomial distribution because the trials are not independent
     # and the probability of success changes with each trial
## 9c: This would not be a binomial distribution because there is not set number of trials.
## 9d: This would be a binomial distribution because it fits all 4 criteria
## 9e: This would be a binomial because it has all 4 criteria.

# 10: uniform distribution of children eating donuts. min=0.5,max=4 minutes to finish.
    # probability of taking more than two minutes given that theyve already been eating for more than 1.5
morethan1.5 <- punif(1.5,min=0.5,max=4,lower.tail=FALSE)
morethan2 <- punif(2,min=0.5,max=4,lower.tail=FALSE)
# P(B|A) = P(B&A)/P(A)
(morethan2*morethan1.5)/morethan1.5
