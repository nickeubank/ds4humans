the_answer <- 42

doubled <- the_answer * 2

print(the_answer)

answer_divided_by_9 <- the_answer / 9
answer_divided_by_9

print(round(answer_divided_by_9, digits = 2))

answer_divided_by_5 <- the_answer / 5
print(round(answer_divided_by_5, digits = 2))

# It only printed one decimal because the
# second decimal is 0, and R doesn't print
# trailing zeros apparently.

my_age <- 35

class(my_age)

my_dog <- "Trillian"

class(my_dog)

seven <- "7"
class(seven)

seven <- as.numeric(seven)
class(seven)

my_age + seven
