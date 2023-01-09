our_matrix <- matrix(1:12, nrow = 3, ncol = 4)
our_matrix

our_matrix[2, 3]

our_matrix[2, ]

our_matrix[, 3]

class(our_matrix)

class(our_matrix[1, ])

our_matrix[1:2, 3:4]

income <- c(22000, 75000, 19000)
age <- c(20, 35, 55)
education <- c(12, 16, 11)

survey <- cbind(income, age, education)
survey

income <- survey[, 1]
income

below_median = income < 65000
below_median

survey[below_median, ]

survey[survey[, 1] < 65000, ]

survey[survey[, "income"] < 65000, ]

survey[, "education"]

colnames(survey)

rownames(survey)

rownames(survey) <- c("row1", "row2", "row3")
survey

rownames(survey) <- NULL

below_median <- survey[survey[, "income"] < 65000, ]
below_median[, "education"]

survey[survey[,"income"] < 65000, "education"]

mean(survey[survey[,"income"] < 65000, "education"])

survey * 1.02

income_column <- survey[, "income"] # Extract income
adjusted_income <- income_column * 1.02 # Adjust income
survey[, "income"] <- adjusted_income # Replace income with new values!
survey

# Re-make survey so it hasn't been adjusted for inflation
income <- c(22000, 75000, 19000)
age <- c(20, 35, 55)
education <- c(12, 16, 11)
survey <- cbind(income, age, education)
survey

# Now adjust income in one step!
survey[, "income"] <- survey[, "income"] * 1.02
survey

survey[survey[, "education"] < 12, "income"] = survey[survey[, "education"] < 12, "income"] + 10000

survey

array(1:9)

array(1:6, dim = c(2, 3))

# Make random temperatures.
# In a real world application
# you'd have measured these or
# started with seed values based on
# measured values.

 # using a reasonable farenheit mean and sd
rand_temps <- rnorm(3 * 3 * 10, mean = 70, sd = 10)
temperatures <- array(rand_temps, dim = c(3, 3, 10))

temperatures[1, 2, 10]

temperatures[1, 2, ]

temperatures[, , 5]
