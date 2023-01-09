# Computational Methods for Social Scientists: Day 1
# https://cm4ss.com/html/exercises/exercise_datatypes.html
# Practicing Assignment and Data Types

# Exercise 1: Assigning values
# 1. Assign the numeric value 42 to a variable called the_answer.
the_answer = 42
# 2. Now create a new variable (you can call it whatever you want) that is equal to double the_answer.
new_var = the_answer*2



# Exercise 2: Functions!¶
# 1. Use print() to print out the value of the_answer
print(the_answer)
# 2. Create a new variable called answer_divided_by_9 that is the_answer divided by 9.
answer_divided_by_9 = the_answer/9
# 3. Using print() and round(), print out answer_divided_by_5 rounded to two decimal places.
print(round(answer_divided_by_9,2))



# Exercise 3: Different types
# 1. Create a variable called my_age and set it equal to your age
my_age = 23
# 2. Check the class of my_age using the class() function.
class(my_age)
# 3. Create a variable called my_dog and set it equal to the name of your dog. (If you do not have a dog, pretend you do What's your pretend dog's name?)
my_dog = 'Shark'
# 4. What's the class of my_dog?
class(my_dog)
# 5. Now the weird one. Create a variable called seven and assign in the value "7" in quotes. What's the class of 7? Why is it not numeric?
seven = "7"
class(seven) # char
# 6. What happens if you add my_age and seven?
my_age + seven
# 7. To convert seven to a numeric type, type seven = as.numeric(seven). Now check it's class again.
seven = as.numeric(seven)
class(seven)
#. 8. Now can you add my_age to seven?
my_age + seven
