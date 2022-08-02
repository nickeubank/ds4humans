names <- c("Yi", "Zoe", "Ishani", "Kelly")

for (i in names) {
    print(i)
}

# Set `i` to first entry in `names`
# When we put this inside the loop,
# this will be done automatically by the loop
i <- names[1]

# Now write the code you want to put in your loop.
message <- paste0("Thank you ", i, " for a great class! ")
print(message)

for (i in names) {
    message <- paste0("Thank you ", i,
                      " for a great class! ")
    print(message)
}

print("OK, bye now!")

for (i in 1:5) {
    print(i)
}

a <- 5

if (a < 10) {
    print(a)
}

a <- 5

if (a > 10) {
    print(a)
}

a <- 5

if (a > 10){
    print("a is greater than 10!")
} else {
    print("a is less than 10!")
}

a <- 20

if (a > 10){
    print("a is greater than 10!")
} else {
    print("a is less than 10!")
}

files <- c("data12.txt", "code38978.R", "data_2021_08_01.dta",
           "data_123.csv", "code13.R")
for (f in files){

    # substr gets a portion of a character,
    # starting at the second argument and
    # ending at the third. So this will 
    # get either "code" or "data"
    prefix <- substr(f, 1, 4)

    if (prefix == "data"){
        print(paste0(f, " is data. So I'd do a data thing here."))
    } else {
        print(paste0(f, " is code. So I'd do a code thinghere ."))
    }
}

# Our sum:
sum <- 0

# Our index n
n <- 1

# How we measure change. Start with big number. 
change <- 1

while (change > 0.00000001) {
    old_sum <- sum
    sum <- sum + 1 / (2^n)
    change <- abs(sum - old_sum)
    n <- n + 1
}
print(paste0("A sum of ", sum, " was reached after ", n, " iterations"))

df <- data.frame(a = c(1, 2, 3), column_to_keep = c(4, 5, 6))
df

column_to_keep <- "a"

# No quotes -> read as a variable ->
# R substitutes the value assigned
# to the variable before evaluating,
# so this is the same as `df[, "a"]`:
df[, column_to_keep]

# With quotes -> read as a character ->
# get column "column_to_keep"
df[, "column_to_keep"]

library(dplyr)

# Get column "column_to_keep"
select(df, column_to_keep)

for (column_to_keep in c("a", "column_to_keep")) {
    print(df[, column_to_keep])
}

for (column_to_keep in c("a", "column_to_keep")) {
    print(select(df, column_to_keep))
}

for (column_to_keep in c("a", "column_to_keep")) {
    print(select(df, .data[[column_to_keep]]))
}

# Two random variables:
v1 <- rnorm(10000000)
v2 <- rnorm(10000000)

# add up with vector math:

# Record the current time
start <- proc.time()

# Multiply entries in two vectors
v1 <- v1 / v2 + 20

# Record current time
stop <- proc.time()

# Measure how much time elapsed
run_time_vector_addition <- stop - start
run_time_vector_addition

# Now add them up in a loop.

# Record the current time
start <- proc.time()

# Multiplying entries in a loop
for (i in 1:10000000) {
    v1[i] <- v1[i] / v2[i] + 20
}

# Record current time
stop <- proc.time()

# Measure how much time elapsed
run_time_loop_addition <- stop - start
run_time_loop_addition

# Looped took about this many time longer:

round(run_time_loop_addition[1] / run_time_vector_addition[1], 2)

