
###########
# Tired of vectors? Let's play with dataframes!
###########


# Exercise 1: Loading a dataframe
  # Loading a dataframe requires two steps: first, you
  # have to tell R where it should look for files. Then you can tell it what
  # you want to load.

  # To tell it where you want R to look for files, use the `setwd()` command.
  # Set it to the location of your Exercises/Data folder. On my computer, for
  # example, I would type: `setwd("/users/nick/dropbox/joint_projects/poli_sci_boot_camp/Computational_methods/Exercises/Data")`
  # Set yours.

  # Now we're going to load the `animals.csv` dataset. If you have microsoft excel,
  # start by just openning the dataset to see what's in it.
  # Then run `read.csv("animals.csv")`.
  # (Note: CSV stands for comma-separated values, a generic spreadsheet format.
  # R can load lots of other formats too.)

  # Hint: Remember R doesn't remember things if you don't save them to a variable!


  # You can now look at your data as a spreadsheet in Rstudio with the command:
  # `View(variable_where_you_saved_data)`

  # You can also see the first five rows with `head(variable_where_you_saved_data)`
  # and last five rows with `tail(variable_where_you_saved_data)`.

# Exercise 2: Properties of Data Frames
  # Here are a handful of useful functions for getting a sense of your data.
  # These aren't critical with a small dataset like this, but are critical
  # when working with larger datasets you can't just look at in excel.

  # Get the number of rows and columns in the data with `nrow` and `ncol`

  # Get summary of all columns with `summary`


# Exercise 3: working with individual variables

  # So what is a data.frame really? A data.frame is just a collection of vectors
  # (called columns) of the same length that we want to work with together.
  # In general, each column is a different variable, and each row is a different
  # observation.
  #
  # In this dataset, for example, theres a column of animal names,
  # columns that have value 1 if the animal has a given attribute, and
  # a column of categories.

  # Each column in a dataset has a name. To see these names, type `names(your_data)`

  # You can pull out a single variable in one of two ways. The first is the dollar sign
  # operator. Try grabbing just the names of animals with `your_data$animal`

  # Now try to get just the variable `type`.

  # Just as we used square brackets to get subsets of vectors, we can use square
  # brackets to get subsets of data.frames too! If we type `your_data["types"]`
  # we get the types column, just like if we used the dollar sign.

  # We can also get multiple columns the same way we got multiple observations from
  # vectors: with a vector of column names. Try `your_data[c("animal", "types")]`

  # If you want to see what's in an individual variable, try using the `table` command.
  # i.e. if I wanted to know how many observations there were of each animal, I'd type
  # `table()`


# Exercise 4: working with individual ROWS
  # So if square brackets gets us columns, how do we get rows?
  # The answer is that when R is working with objects with 2 dimensions,
  # we can subset by putting a comma into the square brackets and
  # requesting ROWS, putting in a comma, then requesting COLUMNS.

  # For example, to get the first row, we can type
  # `your_data[1, ]` (if there's nothing after the comma, R returns all columns).
  # Can you figure out how to get the first THREE rows?

  # If you want just the animal column of the first row, type `your_data[1, "animal"]`.
  # Can you get the types of the first three rows?


    # OK, so one important thing to note: R does NOT treat columns and rows the same.
    # As you saw, if you just pass a single value into square brackets (with no commas)
    # R assumes you're subsetting columns. That's because in data work we often want
    # work with single variables. So remember: if you just want to work with columns,
    # you can use square brackets without a comma; if you want to work with rows, you
    # MUST put in the comma.


    # Last, note that while we normally refer to variables by name (since they have names!)
    # you can subset by number. For example, `your_data["animal"]` and `your_data[1]`
    # will both return the first column.
