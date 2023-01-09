# Create three vectors 
name <- c("al", "bea", "carol")
age <- c(6, 7, 4)
hair <- c("brown", "green", "blond")

# Create data frame 
children <- data.frame(name, age, hair)
children

# Create data frame 
children <- data.frame(
    name = c("al", "bea", "carol"),
    age = c(6, 7, 4),
    hair = c("brown", "green", "blond")
)
children

children[, "hair"]

class(children[, "hair"])

country <- rep(c("USA", "China", "Sudan"), 3)
year <- c(1994, 1994, 1994, 1995, 1995, 1995, 1996, 1996, 1996)
gdp_pc <- round(runif(9, 1000, 20000))

countries <- data.frame(country, year, gdp_pc)
countries

# Num rows (e.g. observations)
nrow(countries)

# Num columns (e.g. variables)
ncol(countries)

head(countries)

tail(countries)

# Get some summary information about each variable
summary(countries)

getwd()

setwd("/users/nick/downloads")

setwd("/Users/Nick/github/computational_methods_boot_camp/source/data")
dir()

# Set working directory to this file's directory 
# (this will be different for you!)
setwd("/Users/Nick/github/computational_methods_boot_camp/source/data")

# Read in the data and assign to a variable.
world <- read.csv("world-small.csv")

class(world)

# Number of observations:
nrow(world)

# Number of observations
ncol(world)

# Let's look at the first few rows
head(world) 

# And get a sense of the variables in the data
summary(world) 
