# Create a list with characters, a numeric,
# a logical, a longer numeric, end even another list!
my_list <- list("one", 2, TRUE, c(1, 2, 3), list(1, 2, 3))
my_list

my_list <- append(my_list, "five")

# Change the third entry
my_list[3] <- "three"
my_list

x <- my_list[1]
x

class(x)

y <- my_list[[1]]
y

class(y)

my_list <- list(first = "one", second = "two")
my_list

my_list["first"]

my_list$first
