a <- 7
length(a)

# Numeric vectors 
a_numeric_vector <- c(20, 25, 60, 55)
a_numeric_vector


# Character vectors
a_character_vector <- c("Red", "Green", "Purple")
a_character_vector


# Logical vectors
a_logical_vector <- c(TRUE, FALSE, TRUE) 

a <- c(1, 2, 3)
b <- c(4, 5, 6)
c <- c(a, b)
c

1:20

seq(2, 20, 2)

# Create a vector with the value 42
# repeated 10 times.

rep(42, 10)

# Here's what we'll start with
numbers <- 1:10
numbers


# You can modify all values in a vector 
# by doing math with a vector of length 1
numbers / 10

numbers + 10

# Modify a vector using a function
sqrt(numbers) #square root


exp(numbers) #exponentiate

# Two vectors with the same number of elements 
numbers2 <- c(0, 0, 0, 0, 0, 1, 1, 1, 1, 1)
numbers3 <- numbers2 + numbers
numbers3


summary(numbers)

a <- c("Nick", 42)
a

c(1, 2, TRUE)

c(TRUE, 42, "Julio")
