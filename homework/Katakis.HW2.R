# Homework 2

# 1: working with HairEyeColor
## 1a-b:
HEC <- c(32,11,10,3,53,50,25,15,3,30,5,8)
rnames <- c("Black Hair", "Brown Hair", "Blond Hair")
cnames <- c("Brown Eyes","Blue Eyes","Hazel Eyes","Green Eyes")
HairEyeColor1 <- matrix(HEC, nrow=3, ncol= 4, byrow=TRUE,
                       dimnames= list(rnames,cnames))
HairEyeColor1
## 1c-d:
HairEyeColor
is.array(HairEyeColor)  # returns TRUE; HairEyeColor is an array
## 1e: 
### (i): total number of respondents in the survey
total <- sum(HairEyeColor)
total
### (ii): total number of male respondents
totalmale <- sum(HairEyeColor[,,"Male"])
totalmale
### (iii): total number of respondents with blue eyes
totalblue <- sum(HairEyeColor[,"Blue",])
totalblue
### (iv): female repondents with red hair
femalered <- sum(HairEyeColor["Red",,"Female"])
femalered

# 2: use the mtcars data set
View(mtcars)
## 2a: plot mpg vs rear axle ratio using plot()
plot(mtcars$mpg,mtcars$drat,xlab= ("miles per US gallon"),
     ylab= ("rear axle ratio"))  # mpg is on the x axis
##2b: construct a barplot of number of forward gears
barplot(mtcars$gear)
## 2c: write code to get numeric summary of mtcars dataset
summary(mtcars)
## 2d: create boxplot of miles per gallon
options(scipen = 999)  # turn off scientific notation
boxplot( mtcars$mpg, main= toupper("miles per us gallon in the mtcars dataset"), col= "pink",horizontal= TRUE)
## 2e: create a side-by-side boxplot comparing mpg to number of gears
boxplot(mtcars$mpg~mtcars$gear, xlab= "Number of Forward Gears",ylab= "Miles per US Gallon",
        main= toupper("Comparing the Miles per US Gallon to Number of Forward Gears"), col= "light blue" )

# 3: Creating a List in R
## 3a: create a vector y with the following 6 objects
y <- c(77,44,33,"Hamilton","Bottas","Verstappen")
## 3b: create a list z with the same objects
z <- list(77,44,33,"Hamilton","Bottas","Verstappen")
### The vector y is stored as a vector of different datatypes that have been coerced to characters.
### The list z creates a dataset of the 6 variables in which their original type, num or chr, is maintained.
## 3c: add "Perez" and 11 to the list z
z <- append(z,"Perez",after= length(z))
z <- append(z, 11, after= length(z))
## 3d: write code to retrieve "Hamilton", "Bottas", and "Verstappen" from z
z[4:6]
is.list(z[4:6])  # returns TRUE
length(z[4:6])  # returns length of 3

# 4: working with matrices
## 4a: create a 4x4 matrix with elements 16-31 filled by row
x <- matrix(16:31,nrow= 4,ncol= 4,byrow= TRUE)
x
## 4b-c: name the columns C1,C2,C3,C4 and rows R1,R2,R3,R4
rnames <- c("R1","R2","R3","R4")
cnames <- c("C1","C2","C3","C4")
x <- matrix(16:31,nrow= 4,ncol= 4,byrow= TRUE, dimnames= list(rnames, cnames))
x
## 4d: return the third element in the second row
x[2,3]

# 5: create an array of two 3x4 matrices containing elements 1-20 filled by column
v <- 1:20
array <- array(v, dim = c(3,4,2))
array
## 5a: add suitable row, column, and matrix names
row.names <- c("r1","r2","r3")
col.names <- c("c1","c2","c3","c4")
matrix.names <- c("matrix 1","matrix 2")
array <- array(v, dim = c(3,4,2), dimnames= list(row.names,col.names,matrix.names))
array
## 5b: find the sum of the column elements
sumcol <- apply(array, 2, sum)
sumcol
## 5c: find the mean of the array elements
mean.elements <- apply(array, c(1,2), mean)
mean.elements  # mean of the elements at each index
is.matrix(mean.elements)  # returns true
mean.array <- mean(mean.elements)
mean.array  # mean of all 24 elements in the array
