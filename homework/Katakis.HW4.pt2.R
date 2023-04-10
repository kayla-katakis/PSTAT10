# Homework 4 Questions 7-11

#7: construct the cdf/barplot for the following discrete random variables
##7a: number of sixes when two fair 6 sided die are thrown
numsixes <- c(0,1,2)
prob <- c(25/36,10/36,1/36)
cdf_sixes <- cumsum(prob)
barplot(cdf_sixes,names.arg=numsixes, xlab= "Number of Sixes",
        ylab= "Cumulative Probability",
        main ="CDF of the Number of Sixes When Two Fair 6-Sided Die Are Thrown")
##7b: number of heads when three fair coins are tossed
numheads <- c(0,1,2)
probhead <- c(1/4,2/4,1/4)
cdf_heads <- cumsum(probhead)
barplot(cdf_heads,names.arg =numheads, xlab= "Number of Heads",
        ylab= "Cumulative Probability",
        main= "CDF of Number of Heads When Two Fair Coins are Tossed")
#8: simulate 20 rolls of a fair 8 sided die
sample(c(1,2,3,4,5,6,7,8), 20, replace=TRUE)

#9: using mtcars, take a sample of size 5 mpg values
data(mtcars)
View(mtcars)
sample(mtcars$mpg, 5, replace = FALSE)

#10: randomly sample and print 6 rows from mtcars
sample <- mtcars[sample(nrow(mtcars),6),]
print(sample)

#11: There are 3 red, 3 blue and 4 green balls in a bag. Using sample() simulate drawing two balls from the
#    bag, without replacement.
outcomes <- c("red","blue","green")
probabilities <-c(0.3,0.3,0.4)
sample(outcomes, 2, replace=FALSE, prob=probabilities)

