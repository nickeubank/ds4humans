
###########
# Often we want to access parts of vectors.
# Here's how!
#
# Below you will find a number of prompts.
# After each prompt, please add code
# that does what the prompt asks.
###########


# Exercise 1: Subsetting Vectors by Row Number

   # Often we want to work with a subset of items in a vector.
   # This is generally done using square brackets.

   # For example, pull out the second of your favorite numbers
   # by "indexing" into your vector by typing `my_favorite_numbers[2]`

   # Now grab the third item!

   # Now can you figure out how to get the first AND third of your favorite numbers
   # in one query?

# Exercise 2: Subsetting Vectors with Booleans
   # Now suppose you only want the big values of `my_favorite_numbers`.
   # First, let's make a vector of true/false logical vectors. Try running
   # `big = my_favorite_numbers > 5`. If you look at `big`, do the values make
   # sense?

   # Now try using `big` to get only the values of `my_favorite_numbers` that
   # are big back by typing `my_favorite_numbers[big]`

   # OK, now try and get the values of `my_favorite_numbers` that are
   # bigger than the average of `my_favorite_numbers`. (Recall you can get the
   # average of a vector with the `mean` function).
