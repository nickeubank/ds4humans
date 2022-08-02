data <- read.csv("https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/Datasaurus.tsv", sep="\t")


head(data)

library(ggplot2)

# First is the dataset, then within `aes()` you specify
# which column from the data is the x-axis and which column is the y-axis,
# then `+ geom_point()` tells ggplot to plot points for each line of the data.

ggplot(data, aes(x = example1_x, y = example1_y)) + geom_point()
