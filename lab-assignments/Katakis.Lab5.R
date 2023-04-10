# Lab Worksheet 5

# 1: use the which function to determine the index positions of elements > 7
x <- c(3,7,7,8,9,10,1)
which(x > 7)

# 2: use sub function to replace 'B' in the string with 'A'
y <- c("PSTAT 10, PSTAT 5LS, PSTAT120B")
y
z <- sub("B","A", y)
z

# 3: write code to return the names of the months june, july, and august
month.name[6:8]

#4: using factors
## 4a: create a vector of elements B,B,D,E
a <- c("B","B","D","E")
## 4b: convert this vector to a factor
b <- factor(a)
## 4c: show the levels of this factor
levels(b)
## 4d: change the first level of this factor to A
c <- factor(gsub("B","A",b))
levels(c)

# 5: tables
GasBills <- c(46,33,39,37,46,30,48,32,49,35,30,48)
## 5a: find the percentage of gas bills more than $40
over40 <- which(GasBills > 40)
percentover40 <- (length(over40)/length(GasBills))*100
percentover40
## 5b: create a table summarizing the date about gas bills over $40
studentdata <- c("YES","NO","NO","NO","YES","NO","YES","NO","YES","NO","NO","YES")
table(studentdata)
