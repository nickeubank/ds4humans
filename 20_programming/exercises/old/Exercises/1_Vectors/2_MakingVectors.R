
###########
# Vectors are the bread and butter of R.
#
# Let's see how to make them!
###########


# Exercise 1: Making vectors
   # make a vector called `my_favorite_numbers` with
   # a few of your favorite numbers.
   # (hint: use the `c()` function to concatenate or combine
   # numbers into a vector)

   # use the `mean` function to find out the average of your
   # favorite numbers

   # how many numbers did you put in your vector? Find out using the
   # `length` function!

   # Create a vector will all the numbers from 1-10 by typing `first_ten = 1:10`.
   # This colon operator is a special function because it's so common
   # to make vectors with a series of sequential numbers.

   # Now double all the values of `first_ten` by multiplying them by two.

   # Now create a new variable by adding `first_ten` to itself.

   # Now try and create a new variable by adding `1:5` to `first_ten`.
   # Why was that different then adding `first_ten` to itself?


# Exercise 2: The secret of R: everything's a vector!

   # Remember when you typed `x=5`, and you saw a [1] next to the result
   # I told you to ignore? Well now it's time to tell you what it's doing there.
   # It's there because `x=5` doesn't actually assign 5 to `x`, it binds `x`
   # to a vector of size 1 that contains 5.
