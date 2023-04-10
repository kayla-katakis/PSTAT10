# Worksheet 4

# 1a: construct a pie chart to display the following data
deaths <- c(738,538,158,103,93,682)
causes <- c("Heart Diseases","Cancer","Stroke","Pulmonary Diseases","Accidents","Others")
pie(deaths,causes,radius= 1,main=toupper("deaths in 1995 and their causes(in thousands)"),
    col= rainbow(length(deaths)),clockwise= TRUE)
# 1b: This is a good way to represent the data because it is easy to see the relationships between the variables. However, a bar chart would be better for visualizing trends.

# 2a: create an 4x3 matrix m with elements 1-12 and fill it by column
x <- 1:12
y <- matrix(x, nrow=4,ncol=3,byrow=FALSE)
y
# 2b: add row and column names to m
rnames <- c("row1","row2","row3","row4")
cnames <- c("col1","col2","col3")
y <-matrix(x, nrow=4,ncol=3,byrow=FALSE, dimnames=list(rnames,cnames))
y
# 2c: extract elements in column one
y[,1]
#2d extract element in row 3, column 1
y[3,1]

# 3a write one code to generate the following result given a and b without using matrix()
a <- c(1,2,3)
b <- c(6,7,8)
z <- cbind(a,b)
z
# 3b: check to determine whether the above object is a matrix
is.matrix(z)  # returns TRUE
