#!/usr/bin/env python
# coding: utf-8

# # Practicing Assignment and Data Types

# Hello and welcome to your first R exercises!
# 
# To complete these, please open RSTudio and create a NEW text file. Make sure that you save it with a `.R` at the end of the file name, since that's how RStudio knows the file is for R code. 
# 
# Then complete the following exercises in that text file, using comments (lines that start with `#`) to explain what each line does. 
# 
# ## Exercise 1: Assigning values
# 
# 1. Assign the numeric value 42 to a variable called `the_answer`. 
# 2. Now create a new variable (you can call it whatever you want) that is equal to double `the_answer`.

# 
# ## Exercise 2: Functions!
# 
# 1. Use `print()` to print out the value of `the_answer`
# 2. Create a new variable called `answer_divided_by_9` that is `the_answer` divided by 9. 
# 3. Using `print()` and `round()`, print out `answer_divided_by_9` rounded to *two* decimal places.
# 4. Now create a variable called `answer_divided_by_5` that's `the_answer` divided by 5. Use round to print out `answer_divided_by_5` to two decimal places. Did it work as you expected? Can you tell why things came out differently?
# 

# 
# ## Exercise 3: Different types
# 
# 1. Create a variable called `my_age` and set it equal to your age
# 2. Check the class of `my_age` using the `class()` function.
# 3. Create a variable called `my_dog` and set it equal to the name of your dog. (If you do not have a dog, pretend you do What's your pretend dog's name?)
# 4. What's the class of `my_dog`?
# 5. Now the weird one. Create a variable called `seven` and assign in the value `"7"` in quotes. What's the class of `7`? Why is it not numeric?
# 6. What happens if you add `my_age` and `seven`?
# 7. To convert `seven` to a numeric type, type `seven = as.numeric(seven)`. Now check it's class again.
# 8. Now can you add `my_age` to `seven`?