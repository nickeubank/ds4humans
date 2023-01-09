# Generate toy dataset 1:
demo <- data.frame(
    country = c("USA", "Albania", "Turkey", "China", "Sudan"),
    democracy_score = c(19, 16, 16, 5, 10)
    )
demo

# Generate toy dataset 2:
econ <- data.frame(
    country = c("China", "Albania", "Turkey", "USA", "Sudan"),
    gdp_pc = c(12000, 10000, 9000, 20000, 500)
    )
econ

library(statar)
df <- join(demo, econ, on = "country", kind = "inner")
df

# Generate toy dataset 1:
country <- rep(c("USA", "China", "Sudan", "India"), 2)
year <- c(1994, 1994, 1994, 1994, 1995, 1995, 1995, 1995)
democracy <- round(runif(8, 0, 20), 0)

demo <- data.frame(country, year, democracy)
demo

# Generate toy dataset 2:
econ <- data.frame(
    expand.grid(year = 1994:1996, country = c("USA", "China", "Sudan")),
    gdp_pc = round(runif(9, 1000, 20000), 0)
    )
econ

join(demo, econ, on = c("country", "year"), kind = "inner")

# keep all rows, matching or not

join(demo, econ, on = c("country", "year"), kind = "full")

# keep matching + unmatched in demo observations
# (Left join)
join(demo, econ, on = c("country", "year"), kind = "left")


demo <- data.frame(
    expand.grid(country = c("USA", "China", "Sudan"), year = 1994:1996),
    democracy_score = round(runif(9, 0, 20), 0)
    )
demo

region <- data.frame(
    country = c("USA", "China", "Sudan"),
    region = c("America", "Asia", "Africa")
    )
region

join(demo, region, on = "country", kind = "inner")
