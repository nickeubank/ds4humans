a <- c(42, 47, -1)
a

a[2]

new <- a[2]
new

a <- c(42, 47, -1)
a[2]

a[c(1, 3)]

subset <- c(1, 3)
a[subset]

a[c(3, 1)]

fruits <- c("apple", "banana")
fruits[c(TRUE, FALSE)]

a <- c(42, 47, -1)
my_subset <- c(TRUE, FALSE, TRUE)
b <- a[my_subset]
b

# Create a vector with 30 fruits 
fruits <- rep(c("orange", "apple", "banana"), 10)
fruits


# Create a logical vector for dropping bananas

orange_or_apple <- fruits == "orange" | fruits == "apple" # TRUE if orange OR apple
not_banana <- fruits != "banana"                            # TRUE if not equal
not_banana2 <- !(fruits == "banana")                        # Also TRUE if not equal

# Carry out the subset
fruits[orange_or_apple]

fruits[not_banana]

fruits[not_banana2]

orange_or_apple2 <- fruits %in% c("orange", "apple")
fruits[orange_or_apple2]

# Create a numeric vector
numbers <- seq(0, 100, by = 10)
numbers


# Illustrate three different filters
numbers[numbers <= 50 & numbers != 30]

numbers[numbers == 0 | numbers == 100]

numbers[numbers > 100] #returns an empty vector

attendance = c(132, 94, 112, 84, 254, 322, 472)
attendance

names(attendance) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
attendance

attendance[c("Saturday", "Sunday")]

# Recreate vector with age values
age <- c(50, 55, 80)

# Three ways of changing grandpa's age
# Note: you'd only need to use one of these
age[age == 80] <- 82 # using a logical statement
age[2] <- 45         # using indexing
age

fruits <- rep(c("orange", "apple", "bamama"), 5) 
fruits #bamamas anyone? 

# Let's fix the misspelled element
fruits[fruits == "bamama"] <- "banana"
fruits
