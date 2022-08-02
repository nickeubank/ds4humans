url2004 <- "https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/nyc-311-sample/nyc-311-2004-sample.csv"
nyc04 <- read.csv(url2004)
head(nyc04)

library(lubridate) # to work with dates

# Load required packages

# Create a function that reads and cleans a service request file.
# The input is the name of a service request file and the
# output is a data frame with cleaned variables.
clean_dta <- function(file_name) {

    # Read the file and save it to an object called 'dta'
    dta <- read.csv(file_name)

    # Clean the dates in the dta file and generate responsiveness measures
    # mdy(substring(dta$Created.Date, 1, 10)) pulls just the month-day-year
    # from our columns with dates, then `mdy` tells R to read it as a date
    # in month-day-year format.

    dta$opened <- mdy(substring(dta$Created.Date, 1, 10))
    dta$closed <- mdy(substring(dta$Closed.Date, 1, 10))

    # Number of days between an issue opens and is resolved.
    dta$resptime <- as.numeric(difftime(dta$closed, dta$opened, units = "days"))

    # Create indicator of whether solved within 7 days.
    # responses in less than 0 is bad data.
    dta[dta$resptime < 0 | is.na(dta$resptime), "resptime"] <- NA
    dta$solvedin7 <- as.numeric(dta$resptime <= 7)

    # Return the cleaned data
    return(dta)
}

# Execute function on the 2004 data
nyc04 <- clean_dta(url2004)
head(nyc04)

# loop over and collect in a list!

url_stem <- "https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/nyc-311-sample/nyc-311-"
url_suffix <- "-sample.csv"

# Get first one so we can append others to the bottom
nyc_all <- clean_dta(paste0(url_stem, 2004, url_suffix))

for (year in 2005:2009) {
    url <- paste0(url_stem, year, url_suffix)
    new_data <- clean_dta(url)
    nyc_all <- rbind(nyc_all, new_data)
}

# 10 random rows
nyc_all[sample(nrow(nyc_all), 10), ]
