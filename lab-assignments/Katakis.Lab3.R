# Lab Worksheet 3
# 1: create a histogram of the CO2 uptake for the grass plant.
data("CO2")
View(CO2)
hist(CO2$uptake, breaks = "Sturges", col = "BLUE", xlab = "CO2 Uptake", main = paste("Histogram of CO2 Uptake"))
# This is a bimodal histogram.

# 2a: find the correction function for a stemplot.
?stem()

# 2b-d: create a stemplot with data from the example. Check and correct.
x <- c(9,9,22,32,33,39,39,42,49,52,58,70)
stem(x, scale = 2)
# 2e: stemplots preserve individual data points, whereas histograms preserve data in groups. 

# 3: finding different measures of the state.area data
data("state")
rm(state.center)
rm(state.division)
rm(state.region)
rm(state.x77)
rm(state.abb)
rm(state.name)


# 3a: find the area of the smallest state
min(state.area)

# 3b: find the area of the largest state
max(state.area)

# 3c: find the mean area of all states
mean(state.area)

# 3d: find the median area
median(state.area)

# 3e: find the difference between the largest and smallest state areas
diff(range(state.area))

# 4: find the mode of the following vector
a <- c(2,3,3,3,4,2,5,10)
mfv(a)
