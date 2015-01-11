
# R programming Week 3 Quiz

# Question 1
# What is the mean of 'Sepal.Length' for the species virginica?
library(datasets)

data(iris)

?iris

iris

iris[iris$Sepal.Length & iris$Species == 'virginica', 1]

mean(iris[iris$Sepal.Length & iris$Species == 'virginica', 1])
# [1] 6.588

# Or in this way

library(datasets)

data(iris)

dat <- iris[iris$Species == 'virginica', ][1]

class(dat)
# [1] "data.frame"

# convert to numeric
dat_num <- as.numeric(as.character(dat$Sepal.Length))

mean(dat_num)
# [1] 6.588

# Question 2
# Wwhat R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
apply(iris[, 1:4], 2, mean) # 2 means column operation

# Question 3
# How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
library(datasets)

data(mtcars)

?mtcars
# A data frame with 32 observations on 11 variables.
# [, 1]   mpg   Miles/(US) gallon
# [, 2]   cyl	 Number of cylinders

plot(mtcars[, 2], mtcars[, 1], xlab='Number of Cylinders', ylab='Miles/gallon')

Mpg_Cyl <- with(mtcars, tapply(mpg, cyl, mean))
Mpg_Cyl
# tapply(mtcars$mpg, mtcars$cyl, mean)  <-- also correct
# tapply(mtcars$cyl, mtcars$mpg, mean)  <-- wrong

# Question 4
# What is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
HP_Cyl <- with(mtcars, tapply(hp, cyl, mean))
# Or HP_Cyl <- tapply(mtcars$hp, mtcars$cyl, mean) 
HP_Cyl
#        4         6         8 
# 82.63636 122.28571 209.21429 

abs(HP_Cyl[3] - HP_Cyl[1])
# 126.5779 

# Question 5
# If you run 'debug(ls)' what happens when you next call the 'ls' function?
debug(ls)
ls()
undebug(ls)
# Execution of 'ls' will suspend at the beginning of the function and you will be in the browser.
