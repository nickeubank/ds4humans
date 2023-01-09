country <- rep(c("USA", "China", "Sudan"), 3)
year <- c(1994, 1994, 1994, 1995, 1995, 1995, 1996, 1996, 1996)
gdp_pc <- round(runif(9, 1000, 20000))

countries <- data.frame(country, year, gdp_pc)
countries

countries[countries[, "gdp_pc"] < 10000, "year"]

# What we're used to from matrices
countries[, "gdp_pc"]

# The shortcut for a single dataframe column
countries$gdp_pc

# And if you don't have a comma, R assumes you're accessing columns
countries["gdp_pc"]

# re-create with original gdp_pc 
countries <- data.frame(country, year, gdp_pc)
countries

countries[, "gdp_pc"] <- countries[,"gdp_pc"] * 1.02

countries$gdp_pc <- countries$gdp_pc * 1.02

# re-create with original gdp_pc 
countries <- data.frame(country, year, gdp_pc)

# Add new column
countries$adjusted_gdp_pc <- countries$gdp_pc * 1.02
countries

mean(countries$gdp_pc)

# Number of observations by country 
table(countries$country)

# Proportion of observations by country 
prop.table(table(countries$country))

countries[, c("gdp_pc", "year")]

# Drop columns gdp_pc and year
countries[, !(names(countries) %in% c("gdp_pc", "year"))]


names(countries)

names(countries) %in% c("gdp_pc", "year")

countries$gdp_pc <- NULL
countries

countries[countries$year == 1995 & countries$country == "USA", ]

# Sort by GDP
countries[order(countries$adjusted_gdp_pc),]

order(countries$adjusted_gdp_pc)

countries[order(countries$year, countries$country),]

countries[order(-countries$adjusted_gdp_pc), ]
