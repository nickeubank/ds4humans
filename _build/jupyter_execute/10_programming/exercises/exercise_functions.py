#!/usr/bin/env python
# coding: utf-8

# # Function Exercises
# 
# 1. Write a function called `second_largest` that finds the second largest value in a vector of numeric values. That is, the input should
# be a numeric vector and the output should be the second largest value in the vector. You can assume that the input vector has at least two values. Test your function on the following two vectors: 
# 
# * `v1 <- 1:10`
# * `v2 <- c(15, 1000, 2, 3, 8)`
# 
# 2. Modify the `second_largest` function so that it accounts for two special cases: (1) when the user inputs a numeric vector with only
# one value, the function should return the message "Invalid input: at least two values required"; (2) when the user inputs a vector that is **not** numeric, the function should return the message "Invalid input: only numeric vectors accepted". Test your new function on the following vectors:
# 
# * `v1 <- 1:10`
# * `v2 <- 2`
# * `v3 <- c("banana", "apple", "orange")`
# * `v4 <- as.factor(1:10)`
# 
