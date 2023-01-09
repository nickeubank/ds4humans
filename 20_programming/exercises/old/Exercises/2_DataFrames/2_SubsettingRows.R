
###########
# Subsetting with Booleans
#
###########


# Exercise 1: Subset by boolean
   # In research, we often want to subset our attention to a subset of
   # observations in our data. As you may recall, we can subset vectors based on
   # specific properties by writing a test (like `my_favorite_numbers > 6`)
   # and putting it in square brackets. Turns out, we can do that with data.frames
   # too!

   # For example here's how I could get the names of all the animals that are reptiles:

   # Make the test:
   # `reptiles = my_data$type == "reptile"`
   # (the double equal size is for checking equality instead of assigning)
   #
   # Then subset those rows:
   # `my_data[reptile, ]`
   #
   # Or I can do these two things in one step by just putting the test
   # directly into the square brackets:
   # my_data[my_data$type == "reptile", ]`

   # OK, your turn! Try and get just the rows that are mammals.


   # OK, now get just the NAMES of those animals (i.e. just the values of the
   # `animal` column that are names of mammals.)
