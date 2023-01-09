income <- c(22000, 65000, 19000)
age <- c(20, 35, 55)
education <- c(12, 16, 11)

cbind(income, age, education)

respondent1 <- c(20, 22000, 12)
respondent2 <- c(35, 65000, 16)
respondent3 <- c(55, 19000, 11)

rbind(respondent1, respondent2, respondent3)

matrix(1:9, nrow = 3, ncol = 3)

salary_1980 <- c(30000, 45000, 22000)
salary_1990 <- c(37000, 42000, 29000)
salary_2000 <- c(49000, 47000, 33000)

salaries = cbind(salary_1980, salary_1990, salary_2000)
salaries

salaries_in_thousands <- salaries / 1000
salaries_in_thousands

tax_refunds_1980 <- c(10000, 2000, 15000)
tax_refunds_1990 <- c(0, 0, 14000)
tax_refunds_2000 <- c(0, 0, 7000)

refunds <- cbind(tax_refunds_1980, tax_refunds_1990, tax_refunds_2000)
refunds


total_income <- salaries + refunds 
total_income

# Num rows
nrow(total_income)

# Num cols
ncol(total_income)

# Overall statistics
mean(total_income)

# And statistics calculated for each columns
colMeans(total_income)

# Or for each row!
rowMeans(total_income)

matrix_1 <- matrix(1:9, nrow = 3)
matrix_1

matrix_2 <- matrix(9:17, nrow = 3)
matrix_2


# Matrix multiplication 
matrix_1 %*% matrix_2

# Transpose matrix
t(matrix_1)

# Eigen vector of matrix
eigen(matrix_1)

# Inverse of a Matrix -- called solve.

# Note I have to do this with a different matrix, since 
# `matrix_1` isn't invertable! :)

solve(salaries)

lm(income ~ age + education)

# Make X. note we need a vector of 1s for our intercept.
X <- cbind(age, education, rep(1, 3))
X

# Then we can calculate the components separately
# to make the mapping to the formula clear. 
# Here's X' (i.e. X transpose)

X_transpose <- t(X)
X_transpose

# And now the block on the left: (X'X)^-1
inverse_of_X_transpose_times_X <- solve(X_transpose %*% X)

# And the block on the right: X'Y
X_transpose_y <- X_transpose %*% income


# And putting it all together we get:
inverse_of_X_transpose_times_X %*% X_transpose_y

solve(t(X) %*% X) %*% (t(X) %*% income)
