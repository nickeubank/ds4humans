income <- c(22000, 65000, 19000, 110000, 14000, 0, 35000)
age <- c(20, 35, 55, 35, 21, 56, 42)
education <- c(12, 16, 11, 22, 12, 8, 12)

svy <- cbind(income, age, education)
svy

mean(svy[, "age"])

mean(svy[svy[, "age"] > 30, "income"])

# Broken out
avg_income <- mean(svy[, "income"])
rows_above_avg <- svy[, "income"] > avg_income
educs_of_above_avg <- svy[rows_above_avg, "education"]
mean(educs_of_above_avg)

# Condensed as much as I'd like
avg_income <- mean(svy[, "income"])
mean(svy[svy[, "income"] > avg_income, "education"])

after_tax_income <- svy[, "income"]
updated_survey <- cbind(svy, after_tax_income)
updated_survey

under_20000 <- updated_survey[, "income"] < 20000
updated_survey[under_20000, "after_tax_income"] = updated_survey[under_20000, "after_tax_income"] + 10000
updated_survey
