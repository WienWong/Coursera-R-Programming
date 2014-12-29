
# R programming Week 4 Quiz

# Question 1
# What is produced at the end of this snippet of R code?
set.seed(1)

rpois(5, 2)
# [1] 1 1 2 4 1
# Because the `set.seed()' function is used, `rpois()' will always output the same vector in this code.

# Question 2
# What R function can be used to generate standard Normal random variables?
?rnorm
# Functions beginning with the `r' prefix are used to simulate random variates.

# Question 4
# Which function can be used to evaluate the inverse cumulative distribution function for the Poisson distribution?
?qpois
# Probability distribution functions beginning with the `q' prefix are used to evaluate the quantile (inverse cumulative distribution) function.

# Question 5
# What does the following code do?
set.seed(10)

x <- rbinom(10, 10, 0.5)

e <- rnorm(10, 0, 20)

y <- 0.5 + 2 * x + e

plot(x,y)
# Generate data from a Normal linear model

# Question 6
# What R function can be used to generate Binomial random variables?
rbinom
