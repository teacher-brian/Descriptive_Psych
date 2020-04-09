install.packages('psych')
library(psych)

# Using an included data set within the psych pacakge called bfi

# the bfi is from the "big five factor model

# just run the following to see the data set

# your textbook's chapters 3 and 4 will be helpful


# what is a function?
# make a function
# let's say we want to take a number and add 1 to it a certain number of times
# why would we?  Well, for an example.  So, let's say we want to add the number 1 to a starting number 4, but do it 6 times:

#  4 +1 +1 +1 +1 +1 +1

# We could just highlight the relevant bits and execute, or we could write a function:


add_1 <- function(start,count){start + 1 * count}

# if we execute that code, we can now just use the add_1() function with arguments, like so:

add_1(4,6)

##note your enviornment pane has a new bit of info


# I want to redo that function to give you some vocab

add_1 <- function(  start = 0  ,  count = 0 ) {

  start + (  1 * count  )

  }

# arguments are what are needed for the function to run
# argument defaults are helpful for common values

## the sum function

# making some data

data <- c(3,5,8)

sum(data)  #note the output

# But what if data has a missing value, NA ?

data <- c(3,5,8,NA)

sum(data)  #note the output...oops.

# how do you sum a missing value?  you have to tell 'sum' to remove it.

sum(data,na.rm=TRUE)   #it worked,
sum(data,na.rm=T)   #so does this.

# length() function. This function counts the items in a vector

length(data)


# What is the average of your data?   Could you make a function using sum?  How do you compute 'average'?

#   sum the numbers, divide by the count of numbers

# try writing a function



#Try the mean() function.



#so, here is a dataset regarding personality variables.

bfi

# https://personality-project.org/r/html/bfi.html

class(bfi)

str(bfi)

summary(bfi)

summary(bfi$gender)

summary(bfi[,c("gender","education","age")])

#what would you need to do to find the average of education?  of Age?


# plotting

# base R and ggplot


# Histograms

hist(bfi$age)

# Boxplots
boxplot(bfi$age)
boxplot(bfi$age~bfi$gender)

# scatterplots
plot(bfi$age)


#Save your work