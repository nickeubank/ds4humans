x<-20000
y<-x*0.23+1500

# Calculate impact of taxes on income

# Start with current income and policies
pre_tax_income <- 20000
tax_rate <- 0.23
tax_rebate <- 1500

# Calculate final after-tax income
after_tax_income <- (pre_tax_income * (1 - tax_rate)) + tax_rebate

library(assertthat)
x <- 7
y <- 5

# Make sure that x is greater than y
assert_that(x > y)

assert_that(any(x < y))

# We'll use `countries` again:

country <- rep(c("USA", "China", "Sudan"), 3)
year <- c(1994, 1994, 1994, 1995, 1995, 1995, 1996, 1996, 1996)
gdp_pc <- round(runif(9, 1000, 20000))

countries <- data.frame(country, year, gdp_pc)
countries

assert_that(nrow(countries) == 9)

assert_that(all((1000 < countries$gdp_pc) & (countries$gdp_pc < 100000)))

df <- data.frame(income_2019 = c(10000, 20000, 30000, 40000, 50000),
                   income_2018= c(50000, 40000, 30000, 20000, 10000),
                   income_2017= c(50000, 20000, 30000, 40000, 50000))
                   
df <- df[(df[, "income_2019"] < 20000) |
        (df[, "income_2018"] < 20000) |
        (df[, "income_2017"] < 20000),]
                   
df

df <- data.frame(income_2019 = c(10000, 20000, 30000, 40000, 50000),
                 income_2018 = c(50000, 40000, 30000, 20000, 10000),
                 income_2017 = c(50000, 20000, 30000, 40000, 50000))

income_threshold <- 20000

df <- df[(df[, "income_2019"] < income_threshold) |
        (df[, "income_2018"] < income_threshold) |
        (df[, "income_2017"] < income_threshold), ]
df
