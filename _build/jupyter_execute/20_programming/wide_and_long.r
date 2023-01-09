# Create long dataset
country_long <- data.frame(
    expand.grid(country = c("Sweden", "Denmark", "Norway"), year = 1994:1996),
    avgtemp = round(runif(9, 3, 12), 0)
    )
country_long

# Create wide dataset
country_wide <- data.frame(
    country = c("Sweden", "Denmark", "Norway"),
    avgtemp.1994 = country_long$avgtemp[1:3],
    avgtemp.1995 = country_long$avgtemp[4:6],
    avgtemp.1996 = country_long$avgtemp[7:9])
country_wide 

u5mr <- read.csv("data/unicef-u5mr.csv")

dim(u5mr) #dimensions of the data frame
names(u5mr) #the variable names

require(tidyr)
u5mr_long <- u5mr %>% gather(year, u5mr, U5MR.1950:U5MR.2015)
tail(u5mr_long)

require(dplyr)
u5mr_long <- u5mr %>%
    gather(year, u5mr, U5MR.1950:U5MR.2015) %>%
    mutate(year = as.numeric(gsub("U5MR.", "", year)))
tail(u5mr_long)
