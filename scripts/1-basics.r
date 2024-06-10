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

# Working with built-in datasets
## checking the available data
data()
## you can view a specific set
View(Titanic)

# Installing and importing libraries
## we can install packages the following way
install.packages("tidyverse")
## tidyverse is the most commonly used lib
## because it's a collection of libraries
## dplyr, ggplot2, tidyr, purr, etc.
## we can import packages
library("tidyverse")
## or 
require("tidyverse")

# Data handling
View(diamonds)
## we can simply use filter by row
filter(diamonds, cut == "Ideal")
## with multiple conditions
filter(diamonds, cut == "Ideal" & price > mean(diamonds$price))
## the best way to manipulate data
## is by using pipe operator %>% 
ideal_diamonds <- diamonds %>% 
  ## filter by row
  filter(cut=="Ideal" & price > mean(diamonds$price)) %>% 
  ## create new fields
  mutate(weight_grams = carat * 0.2) %>% 
  ## select certain columns
  select(starts_with('c') | price) %>% 
  ## and sort by price (desc)
  arrange(-price)
## checking the new data frame
glimpse(ideal_diamonds)

# Exploring the data
## checking the columns
names(ideal_diamonds)
## the number of features
length(ideal_diamonds)
## checking the # of obs
length(ideal_diamonds$carat)
## getting the unique values
unique(ideal_diamonds$clarity)
## getting the missing values
!complete.cases(ideal_diamonds)
