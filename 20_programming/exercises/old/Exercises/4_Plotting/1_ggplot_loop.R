

# Exercise 1:
   # read in "datasaurus.tsv" from the data folder (it's a tab-separated
   # text file).

data = read.csv("/users/nick/dropbox/joint_projects/poli_sci_boot_camp/Computational_methods/exercises/data/datasaurus.tsv",
sep="\t")
head(df)

library(ggplot2)

   # This data consists of a set of example datasets, each
   # with two variables (example[number]_x and example[number]_y)

   # First, write code to get:
   #   - the mean of example1_x,
   #   - the mean of example1_y,
   #   - the standard deviation of example1_x, and
   #   - the stadard deviation of example1_y.



# Exercise 2
   # write a LOOP to do this same operation for each of the examples.
   # Note that looping over column names can be a little tricky.
   # You definitely need to use square bracket notation.
   #
   # I recommend something like:
   #     first_col = paste0("example", i, "_x")
   #     data[first_col]


# Exercise 3
   # Now plot example1_x and example1_y


   # Save the resulting file as ...


# Exercise 4
   # Write a loop to plot all of the example datasets and save them.
   # Hint: To loop over column names with ggplot, you have to do
   # specify column names as strings and use `aes_string` instead of `aes`.
   #
   # first_col = paste0("example", i, "_x")
   # ggplot(data, aes_string(first_col, second_col)) + geom_point()
   #
   # also, set the aspect ratio to 1 using ` + coord_fixed(1)``
