# Computational Methods for Social Scientists: Day 5
# https://cm4ss.com/html/exercises/exercise_loops.html
# Ploting Loop Exercise

vec1 <- c(4, 9, 81, 100, 1000, 10^6)
vec2 <- c()

for (i in 1:length(vec1)) {
  vec2[i] = sqrt(vec1[i])
}

vec2

###
# Monte Carlo Simulation
###

# Draw vector of length 3144 with random vectors
# containing values uniformally distributed between
# 0 and 1.
set.seed(1234)

pop <- runif(n = 3144, min = 0, max = 1)

smpl_means = c()

for (i in 1:10000) {
  smpl_means[i] = mean(sample(pop,size = 50))
}

mean(pop)
mean(smpl_means)

####
# Plotting exercises: https://cm4ss.com/html/exercises/exercise_loops.html 
####

data <- read.csv("https://raw.githubusercontent.com/nickeubank/computational_methods_boot_camp/main/source/data/Datasaurus.tsv", sep = "\t")
head(data)

# EX 2-5
# solution 1
col_vec = seq(1,26,by = 2)

for (i in col_list) {
  print(paste0("Example Dataset ", i))
  print(paste0("Mean x: ", round(mean(data[,i]),2)))
  print(paste0("Mean y: ", round(mean(data[,i + 1]),2)))
  print(paste0("Std Dev x: ", round(sd(data[,i]),2)))
  print(paste0("Std Dev y: ", round(sd(data[,i + 1]),2)))
  print(paste0("Correlation: ", round(cor(data[,i],data[,i + 1]),2)))
}

# solution 2
for (i in 1:13) {
  x = paste("example", i,"_x",sep = "")
  y = paste("example", i,"_y",sep = "")
  
  print(paste0("Example Dataset ", i))
  print(paste0("Mean x: ", round(mean(data[,x]),2)))
  print(paste0("Mean y: ", round(mean(data[,y]),2)))
  print(paste0("Std Dev x: ", round(sd(data[,x]),2)))
  print(paste0("Std Dev y: ", round(sd(data[,y]),2)))
  print(paste0("Correlation: ", round(cor(data[,x],data[,y]),2)))
}

# EX 6-7
library(ggplot2)

# First is the dataset, then within `aes()` you specify
# which column from the data is the x-axis and which column is the y-axis,
# then `+ geom_point()` tells ggplot to plot points for each line of the data.

#ggplot(data, aes(x = example1_x, y = example1_y)) + geom_point()

# solution 1
for (i in col_vec) {
  plot = ggplot(data, aes(x = data[,i], y = data[,i + 1])) + geom_point()
  print(plot)
}

# solution 2
for (i in 1:13) {
  x = paste("example", i,"_x",sep = "")
  y = paste("example", i,"_y",sep = "")
  
  plot = ggplot(data, aes(x = .data[[x]], y = .data[[y]])) + geom_point()
  print(plot)
}


