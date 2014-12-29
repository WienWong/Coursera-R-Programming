
# R programming Week 1 Quiz

# Q3
?atomic
# The atomic modes are "logical", "integer", "numeric" (synonym "double"), "complex", "character" and "raw".

# Q4
x <- 4L
class(x)
# [1] "integer"

# Q5
x <- c(4, TRUE)
class(x)
# [1] "numeric"

# Q6
x <- c(1, 3, 5)
y <- c(3, 2, 10)
rbind(x, y)
#     [,1] [,2] [,3]
# x    1    3    5
# y    3    2   10

# Q8
x <- list(2, "a", "b", TRUE)
x[[2]]
# [1] "a"

# Q9
x <- 1:4
y <- 2:3
x + y 
# [1] 3 5 5 7

# Q10
x <- c(17, 14, 4, 5, 13, 12, 10)
x[x >= 11] <- 4
x
# You can create a logical vector with the expression x >= 11 and then use the [ operator to subset the original vector x.

# Q11
hd <- hw1_data
hd[1, ]
#    Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1

# Q12
head(hd)
#    Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6

# Q13
nrow(hd)
# [1] 153

# Q14
tail(hd)
#      Ozone Solar.R Wind Temp Month Day
# 148    14      20 16.6   63     9  25
# 149    30     193  6.9   70     9  26
# 150    NA     145 13.2   77     9  27
# 151    14     191 14.3   75     9  28
# 152    18     131  8.0   76     9  29
# 153    20     223 11.5   68     9  30

# Q15
hd[47, ]
#    Ozone Solar.R Wind Temp Month Day
# 47    21     191 14.9   77     6  16

# Q16
#nrow(hd) - sum( hd[hd$Ozone != 'NA'] <- 1)
sum(is.na(hd$Ozone))
# [1] 37

# Q17
mean(hd$Ozone, na.rm = TRUE) 
# na.rm a logical value indicating whether NA values should be stripped before the computation proceeds.
# [1] 42.12931

# Q18
sub <- hd[hd$Ozone > 31 & hd$Temp > 90, ]

mean(sub$Solar.R, na.rm = TRUE)  # strip off NA
# [1] 212.8

# Q19
mean( hd[hd$Month == 6,]$Temp, na.rm = TRUE )
# [1] 79.1

# Q20
max(hd[hd$Month == 5, ]$Ozone, na.rm = TRUE)
# [1] 115
