
###########
# Re-order all the code!
#
# Ok, so below is all the code required to
# do an analysis of our animal data.
# But it's not in the right order.
# In other words, the goal is to focus on
# ORGANIZATION and WHAT THE CODE IS DOING,
# not syntax, because all the code is already in place.
#
# The only place you have to change the data is
# that you have to put the path on your computer in
# the `setwd("YOUR_PATH_TO_DATA_FOLDER")` line.
#
#
# Before you start, please make sure you have quit and restart R
# so you'll be starting clean.
#
# OUR GOAL
#
# We want a pet, but we don't know what kind of pet we want.
# So we want to SUBSET our data to get only
# animals that are adorable, so we're gonna
# EXCLUDE predators and venemous animals,
# and SUBSET for animals with hair OR feathers.
#
# Question 1: HOW MANY animals are left of each type (mammals, reptiles, etc.)?
#
# Question 2: There are TWO bugs left in this set of possible pets. What are they?
#
# Question 3: Now (but not before now) subset further to only include domestic
# animals. What animals are we left with as potential pets?
#
# Question 4: Which do YOU want? :)
###########



possible_pets[possible_pets$domestic==1, "animal"]

possible_pets = possible_pets[not_dangerous,]

table(possible_pets$type)

possible_pets = read.csv("animals.csv")

not_dangerous = possible_pets$predator == 0 & possible_pets$venomous == 0

possible_pets = possible_pets[possible_pets$soft,]
possible_pets[possible_pets$type == "bug",]

setwd("/users/nick/dropbox/joint_projects/poli_sci_boot_camp/computational_methods/exercises/data")

possible_pets$soft = possible_pets$hair == 1 | possible_pets$feathers == 1

names(possible_pets)
