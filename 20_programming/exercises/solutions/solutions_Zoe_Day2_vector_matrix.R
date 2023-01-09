# Computational Methods for Social Scientists: Day 2
# https://cm4ss.com/html/exercises/exercise_vectors.html
# https://cm4ss.com/html/exercises/exercise_matrices.html
# Vector and Matrix exercise

# Vector Exercise ----
age = c(50,60,70,80)

# 1.What is the mean age of the people in your vector? Find out in two ways, with and without using the mean() command.
mean(age)
sum(age)/length(age)

# 2.How old is the youngest person in your vector? (Use an R command to find out.)
min(age)

# 3.What is the age gap between the youngest person and the oldest person in your vector?
max(age) - min(age)

# 4. How many people in your vector are above age 25?
sum(age > 25)

# 5.Replace the age of the oldest person in your vector with the age of someone else you know.
is_oldest <- age == max(age)
age[is_oldest] <- 42
#age[age == max(age)] <- 42

# 6.Create a new vector that indicates how old each person in your vector will be in 10 years.
age_in_ten_years = age + 10

# 7.Create a new vector that indicates what year each person in your vector will turn 100 years old
year_needed = 100 - age

# 8. Create a new vector with a random sample of 3 individuals from your original vector. What is the mean age of the people in this new vector?
random_3 = sample(age,size = 3)
mean(random_3)



# Matrix Exercise ----
income <- c(22000, 65000, 19000, 110000, 14000, 0, 35000)
age <- c(20, 35, 55, 35, 21, 56, 42)
education <- c(12, 16, 11, 22, 12, 8, 12)

svy <- cbind(income, age, education)
svy

# Exercise 1: Summarizing Data
# 1.What is the average age of all respondents?
mean(svy[,'age'])

# 2.What is the average income of respondents over 30?
mean(svy[svy[,'age'] > 30,'income'])

# 3.What is the average education of respondents with incomes above the average income for all respondents?
avg_income = mean(svy[,'income'])
mean(svy[svy[,'income'] > avg_income,'education'])

# Exercise 2: Editing Data
# add after_tax_income using cbind()
# if < 20000, offer 10000 tax credit

after_tax_income = svy[,'income']
svy_new = cbind(svy,after_tax_income)

tax_credit = svy[,'income'] < 20000 
svy_new[tax_credit,'after_tax_income'] = svy_new[tax_credit,'after_tax_income'] + 10000

svy_new
 