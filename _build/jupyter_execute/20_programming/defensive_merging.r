# Generate toy dataset 1:
demo <- data.frame(
    country = c("USA", "Albania", "Turkey", "China", "Sudan"),
    democracy_score = c(19, 16, 16, 5, 10)
    )
demo

# Generate toy dataset 2:
econ <- data.frame(
    expand.grid(year = 1994:1996, country = c("United States", "China", "Sudan")),
    gdp_pc = round(runif(9, 1000, 20000), 0)
    )
econ

library(statar)
join(econ, demo, on = c("country", "year"), kind = "inner")

region <- data.frame(
    country = c("USA", "China", "Sudan"),
    region = c("America", "Asia", "Africa"),
    year = c(1994, 1994, 1994, 1995, 1995, 1995, 1996, 1996, 1996)
    )
region

join(demo, region, on = "country", kind = "inner")

# Do our merge with US problem
# as an outer ("full") merge. 
# `gen="_merge"` will now add a column
# to our data with diagnostic info. 

# Update demo to have year again. 
demo <- data.frame(
    expand.grid(country = c("USA", "China", "Sudan"), year = 1994:1996),
    democracy_score = round(runif(9, 0, 20), 0)
    )
demo

merged_data <- join(econ, demo, on = c("country", "year"),
                    kind = "full", gen = "merge_check",
                    check = 1~1)
merged_data

table(merged_data$merge_check)

library(assertthat)

merged_data[merged_data$merge_check != 3, ]

df1 <- data.frame(
    name = c("Mary", "Thor", "Sven", "Jane", "Ake", "Stephan",
             "Bjorn", "Oden", "Dennis"),
    treatment_gr = c(rep(c(1, 2, 3), each = 3)),
    weight_p1 = round(runif(9, 100, 200), 0)
    )
df2 <- data.frame(
    name = c("Sven", "Jane", "Ake", "Mary", "Thor", "Stephan",
             "Oden", "Bjorn"),
    weight_p2 = round(runif(8, 100, 200), 0)
    )
df3 <- data.frame(
    treatment_gr = c(1, 2, 3),
    type = c("dog-lovers", "cat-lovers", "all-lovers")
    )
