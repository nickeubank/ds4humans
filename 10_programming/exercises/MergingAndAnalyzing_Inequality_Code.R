

#####
# Session Setup: Loading, familiarizing
#####


library(statar)

inequality <- read.dta("https://github.com/nickeubank/computational_methods_boot_camp/raw/main/source/data/inequality.dta")

table(inequality$year)

table(taxation$year)

head(populations)

head(taxation)

install.packages("foreign")

fips_codes <- read.csv(url("https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/State_FIPS.txt"), sep = "\t", header = TRUE)

library(foreign)

head(inequality)

install.packages("statar")


populations <- read.csv(url("https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/state_populations.csv"))

#####
# Data Cleaning
#####





populations <- rename(populations, state = NAME, population_2010 = CENSUS2010POP)

###########
# Merging code
###########