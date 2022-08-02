

######################
# Load relevant data.
#
# Note that one dataset is
# a Stata format (file ends in .dta)
#
# To load Stata datasets, you need to load
# the package `foreign`.
#
# Before you can load it, though, you will have to
# install it. In a normal project I would not include code to
# install a package since most packages you use you will install once
# and just load each time in the future, but
# here be sure to install it.
######################

######################
# Get to know the data
######################


# Check how many years of data are in inequality

# Check how many years are in taxation.

# See if we have all the states in taxation

##############
# Clean up the data
##############

###
# Inequality
###

# Get relevant observations and variables from inequality

# Get rid of entries that aren't states

###
# Taxation
###

# Get relevant observations and variables from taxation

# Drop non-states from taxation


# Get relevant observations and variables from populations



# Get rid of non-states

###
# Fips codes
###

# Only need names and fips codes

# Don't want weird region lines and stuff

##############
# Merge the data!
##############

# Inequality and Taxation don't have a variable in common -- one uses
# state FIPS codes (the official US Census bureau state id number for each state)
# and one has state names as strings.
# So we need to merge taxation with our "cross-walk" dataset (called fips_codes)
# so we have both in one place.


# Now we can merge inequality and taxation

# Now we can merge that data with populations!




##############
# Analysis
#
# OK, enough hand-holding. Time for you to do your analysis!
#
# One hint: the comma in taxes may cause you problems. can you fix it?
# You may need `gsub`
##############