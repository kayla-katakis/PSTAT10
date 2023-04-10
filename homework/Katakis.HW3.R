# Homework 3

# 1: Arrays in Practice; A Clinical Trial
## 1a: an array of two 2x2 matrices to show the data
v1 <- c(8,98,5,115)
v2 <- c(22,76,16,69)
array <- array(c(v1,v2), dim= c(2,2,2))
array
## 1b: give the appropriate dimension names
row.names <- c("deaths","survivors")
col.names <- c("TOLB", "placebo")
matrix.names <- c("Age < 55","Age >= 55")
array <- array(c(v1,v2), dim= c(2,2,2), 
               dimnames= list(row.names,col.names,matrix.names))
array
## 1c: calculations
totaldeathsurv <- apply(array,1, sum)  # total deaths and survivors, respectively
totalTOLBplacebo <- apply(array,2,sum)  # totals given TOLB and placebo, respectively
print(array[2,2,2])  # print row 2, column 2 of matrix 2
## 1d: matrix of combined data
v3 <- c(30,174,21,184)
row.names2 <- c("deaths","survivors")
col.names2 <- c("TOLB","placebo")
combineddata <- matrix(v3, nrow=2, ncol=2, byrow= FALSE,
                       dimnames= list(row.names,col.names))
combineddata              

# 2: data frames in practice
data("VADeaths")
View(VADeaths)
##2a: coerce VADeaths to a data frame
is.data.frame(VADeaths)  # returns FALSE, its a matrix
VADeaths.df <- as.data.frame(VADeaths)
is.data.frame(VADeaths.df)  # returns TRUE
View(VADeaths.df)
## 2b: new variable showing the sum of each row
sumeachrow <- apply(VADeaths.df, 1, sum)
##2c: create a chart summarizing the data 
barplot(VADeaths, legend.text= TRUE, beside=TRUE, ylim=(c(0,85)),
        xlim= c(0,25),args.legend= list(x=25,y=100),
        col= c("white","lightblue","cyan","blue","darkblue"),
        main=toupper("Death Rates in virginia"))

# 3: working with data frames
data(state)
is.matrix(state.x77)  # TRUE
df1 <- data.frame(state.x77)
lowincomes <- length(which(df1$Income < 4300))  # 20 states with income < 4300

# 4: factors
z <- factor(c("Agree","Agree","Strongly Agree","Disagree","Agree"))
z
nlevels(z)
levels(z)

# 5: create a data frame from raw data
## 5a: create a data frame from the data
subject <- c("English","Maths","Chemistry","Physics")
percentage <- c(80,100,85,95)
dataframe <-data.frame(subject,percentage)
dataframe
## 5b: rename the columns as 'course' and 'score'
colnames(dataframe)<- c("course","score")
dataframe
## 5c: extract the course column
dataframe["course"]

# 6: create a data frame from an existing data frame
data("swiss")
View(swiss)
newswiss.df <- data.frame(swiss$Examination,swiss$Education,swiss$Infant.Mortality)
v4 <- newswiss.df[1:3,]
v5 <- newswiss.df[10:13,]
newswiss.df <- rbind(v4,v5) 
# created data frame with rows 1-3 and 10-13 of 'swiss' and columns examination,education, and infant.mortality
View(newswiss.df)

