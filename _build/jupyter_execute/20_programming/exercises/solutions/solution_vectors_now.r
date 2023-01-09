my_favorite_numbers <- c(42, 47, 101, -2, 0, 30)

mean(my_favorite_numbers)

length(my_favorite_numbers)

# Either: 
first_ten <- 1:10

# Or:
first_ten <- seq(1, 10)

first_ten <- first_ten * 2

big <- my_favorite_numbers > 5
big

my_favorite_numbers[big]

# In separate steps:
avg <- mean(my_favorite_numbers)
above_avg <- my_favorite_numbers > avg
my_favorite_numbers[above_avg]

my_favorite_numbers[my_favorite_numbers > mean(my_favorite_numbers)]
