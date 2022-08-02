
###########
# Subsetting with Booleans
#
###########

# Exercise 1

   # All the notation you've learned for GETTING individual variables
   # can also be used to CREATE variables -- but put the square brackets
   # on the other side of the equal sign!

   # For example, suppose I want to create a variable for whether
   # an animal is AQUATIC and has FINS and call it LIKELY_FISH.
   #I could do it in several ways

   # Setup:

   # setwd("YOUR_PATH_TO_DATA_FOLDER")
   # animals = read.csv("animals.csv")

   # Assignment: Any of these work:
   # animals$likely_fish = animals$aquatic==1 & animals$fins==1
   # animals["likely_fish"] = animals$aquatic==1 & animals$fins==1
   # animals$likely_fish = animals["aquatic"]==1 & animals$fins==1

   # (recall `&` is the logical "and" operator)

   # can you make a new variable for animals that HAVE feathers but are
   # NOT airborne?


   # What animals fit that category?
