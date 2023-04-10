options(prompt = "R> ")

# create vector x with elements 5,7,3,10,1
x <- c(5,7,3,10,1)
x
x[3]  # extract third element
x[-2]  # extract all elements except the second 
x[4] <- 17  # change the fourth element to 17
x[c(1,3)] <- 4 # replace first and third elements with 4
x
# create vector x2 with elements 1,2,3,7,6,8,3,12,0,17
x2 <- c(1,2,3,7,6,8,3,12,0,17)
length(x2)  # find the length of x2
sort(x2, decreasing= TRUE)  # sort x2 in descending order
mean(x2)  # find the mean of x2

# print "PSTAT HW 1 Question 5" without the quotes
print("PSTAT 10 HW 1 Question 5", quote= FALSE)

# construct the sequence 2.25, 2.5, 2.75, 3.0
seq(2.25,3, by= 0.25)

#create the vector with elements 1,1,1,2,2,2,3,3,3,4 using rep()
rep(1:4, length= 10, each= 3)

#create a function that allows users to enter their name
UserInput <- readline(prompt= "User's name is: ")
cat(UserInput)
