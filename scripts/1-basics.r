# R Basics

# how to run commands?
## crtl + enter

# how to get help in R?
## just use ? command
?data
?mean

# operations in R
## very similar to any other lang
## sum
1 + 1
## sub
2 - 3
## div
2 / 2
## mult
2 * 2
## mod - att 2x% not 1X%
3 %% 2

# assignment in R
# use <- (not =)
## single value assignment
a <- 1
b <- 3
## operations will be the same
c <- a + b
## multi-val assignment
tenure <- c(1, 2, 3, 4)
salary <- c(98.5, 125.1, 86.7, 154.3)
names <- c("John", "James", "Jane", "Janet")
## operations on multi-vals
## can be done by built-in func
sum_tenure <- sum(tenure)
avg_salary <- mean(salary)

# Creating data frames
## we can create dataframes
## from collection of data
full_data <- data.frame(names, tenure, salary)
## looking at all the data
View(full_data)
## checking the structure
str(full_data)

# Accessing data in a dataframe
## entire column by $
full_data$names
## specific row or col
## first row, all cols
full_data[1, ]
## second row, first col
full_data[2, 1]
