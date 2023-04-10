# Worksheet 6
?painters
data("painters")
View(painters)
# choose characteristics to analyze/ how to analyze them

# How do the average(mean) 
boxplot(Composition~School, data = painters, main=toupper("composition scores based on school"),
        xlab= "School", ylab= "Composition Scores")
# shows that schools D and F have much lower average composition scores than the others

# What was the most popular school of art?
mfv(painters$School)
# shows that school A and D were equally the most popular

# comparing artists composition and expression scores with artists in school A
Apainters <- head(painters, n=10)
is.data.frame(Apainters)  # returns TRUE
plot(Apainters$Expression~Apainters$Composition, main= toupper("Comparison of composition and expression scores in school A"),
     xlab= "Composition Scores", ylab= "Expression Scores")
# this plot shows an overall positive correlation between composition and expression scores of artists in school A.

