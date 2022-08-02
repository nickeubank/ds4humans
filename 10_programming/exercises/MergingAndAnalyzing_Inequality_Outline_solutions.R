

######################
# Load relevant data.
#
# Note that one dataset is
# a Stata format (file ends in .dta)
#
# All data imports are set to
# read data directly from the internet, so
# you won't have to install any files.
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


# Load data on inequality (inequality.dta)

library(foreign)
library(statar)

inequality <- read.dta("https://github.com/nickeubank/computational_methods_boot_camp/raw/main/source/data/inequality.dta")


# Load Stata_FIPS.txt, which has codes to merge states with
# one another
fips_codes <- read.csv(url("https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/State_FIPS.txt"), sep = "\t", header = TRUE)

# Load data on taxation

taxation <- read.csv(url("https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/STC_Historical_taxes.csv"))


######################
# Get to know the data
######################


# Check how many years of data are in inequality

table(inequality$year)

# Check how many years are in taxation.

table(taxation$year)

# See if we have all the states in taxation

table(taxation$state)


##############
# Clean up the data
##############

###
# Inequality
###

# Get relevant observations and variables from inequality

inequality <- inequality[, c("year", "state", "gini", "top10", "top1")]
inequality <- inequality[inequality$year == 2010, ]

# Get rid of entries that aren't states
table(inequality$state)

inequality <- inequality[(inequality$state != "District of Columbia") &
    (inequality$state != "United States"), ]


###
# Taxation
###

# Get relevant observations and variables from taxation

taxation <- taxation[, c(
    "year", "state", "Total.Taxes",
    "Total.Income.Taxes", "name"
)]


# Drop non-states from taxation
taxation <- taxation[taxation$name != "US STATE GOVTS", ]


# Get relevant observations and variables from populations

taxation <- taxation[taxation$year == 2010, ]

###
# Fips codes
###

# Only need names and fips codes
fips_codes <- fips_codes[, c("State.FIPS", "Name")]

# Don't want weird region lines and stuff
fips_codes <- fips_codes[fips_codes$State.FIPS != 11 &
    fips_codes$State.FIPS != 0, ]

###
# Population Data
###

populations <- populations[, c("NAME", "CENSUS2010POP")]

# Delete non-states:

populations <- populations[!(populations$state %in% c(
    "United States",
    "District of Columbia",
    "Puerto Rico",
    "Northeast Region",
    "Midwest Region",
    "South Region",
    "West Region"
)), ]



##############
# Merge the data!
##############

# Inequality and Taxation don't have a variable in common -- one uses
# state FIPS codes (the official US Census bureau state id number for each state)
# and one has state names as strings.
# So we need to merge taxation with our "cross-walk" dataset (called fips_codes)
# so we have both in one place.

taxation_w_names <- join(taxation, fips_codes,
    by.x = "FILL_IN_CORRECT_VALUE_HERE", by.y = "FILL_IN_CORRECT_VALUE_HERE",
    kind = "outer"
)


# Now we can merge inequality and taxation
ineq_and_taxation <- join(taxation_w_names, inequality,
    by.x = "FILL_IN_CORRECT_VALUE_HERE",
    by.y = "FILL_IN_CORRECT_VALUE_HERE",
    kind = "outer"
)


# Now we can merge that data with populations!
full_data <- merge(ineq_and_taxation, populations,
    by.x = "FILL_IN_CORRECT_VALUE_HERE",
    by.y = "FILL_IN_CORRECT_VALUE_HERE",
    kind = "outer"
)


##############
# Analysis
#
# OK, enough hand-holding. Time for you to do your analysis!
#
# One hint: the comma in taxes may cause you problems. can you fix it?
# You may need `gsub`
##############