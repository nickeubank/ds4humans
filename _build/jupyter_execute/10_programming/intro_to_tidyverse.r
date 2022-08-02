library(dplyr)
country <- rep(c("USA", "China", "Sudan"), 3)
year <- c(1994, 1994, 1994, 1995, 1995, 1995, 1996, 1996, 1996)
gdp_pc <- round(runif(9, 1000, 20000))

countries <- data.frame(country, year, gdp_pc)
countries

countries_new <- filter(countries, year != 1994) #drop year 1994
countries_new <- arrange(countries_new, country) #sort by country names
countries_new <- mutate(countries_new, country = tolower(country), #convert name to lower-case
                        gdppc_1k = gdp_pc / 1000) #create GDP pc in 1000s
countries_new

countries_new <- countries %>%
    filter(year != 1994) %>%
    arrange(country) %>%
    mutate(country = tolower(country), gdppc_1k = gdp_pc / 1000)
countries_new

a <- 7
6 * a

a <- 7

# a without quotes interpreted as a variable:
print(a)

# a with double quotes interpreted
# as data -- namely, the character a
print("a")
