add_1_and_double <- function(input_number) {
    plus_1 <- input_number + 1
    doubled <- plus_1 * 2
    return(doubled)
}

x <- 5
y <- add_1_and_double(x)
y

add_two_numbers <- function(number1, number2) {
    sum <- number1 + number2
    return(sum)
}
add_two_numbers(1, 2)

add_two_numbers <- function(number1, number2, return_as_character=FALSE) {
    sum <- number1 + number2

    # If return_as_character is TRUE, then sum will be returned as a character
    if (return_as_character == TRUE) {
        sum <- as.character(sum)
    }

    return(sum)
}
add_two_numbers(1, 2)

add_two_numbers(1, 2, return_as_character = TRUE)
