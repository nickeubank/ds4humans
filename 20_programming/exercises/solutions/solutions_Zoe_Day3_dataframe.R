# Computational Methods for Social Scientists: Day 3
# https://cm4ss.com/html/exercises/exercise_dataframe.html
# Dataframe exercise

library(dplyr)
library(foreign)

# Manipulating Real Data ----
# 1. 
world = read.csv("E:/R bootcamp/data/world-small.csv")
# 2. 
# gdp per cap 08 & polityIV per country in its region
# 3.
nrow(world)
ncol(world)

# 4. 
is_Nigeria_and_US <- world$country == 'Nigeria' | world$country == 'United States'
world[is_Nigeria_and_US,]

world %>% filter(country == 'Nigeria' | country == 'United States')

# 5.
world[world$country == 'China', 'polityIV']

world %>% filter(country == 'China') %>% select(polityIV)

# 6.
min(world$gdppcap08)

# 7. which country
world[world$gdppcap08 == min(world$gdppcap08),'country']

world %>% filter(gdppcap08 == min(gdppcap08)) %>% select(country)



# Estimating Labor Market Returns to Education----
acs = read.dta('E:/R bootcamp/data/US_ACS_2017_10pct_sample.dta')
#acs <- read.dta("https://github.com/nickeubank/MIDS_Data/blob/b1dbdf3a58fc15f9603f1e29849d45bdbecd98a8/US_AmericanCommunitySurvey/US_ACS_2017_10pct_sample.dta")

# 3. Check rows, number of observations
nrow(acs)

# 4. Check columns, number of variables
ncol(acs)

# 5. Check variable names
names(acs)

# 6.
vars = c('age','inctot','educ','empstat')
df = acs[,vars]

# 7.
df[sample(nrow(df), 20), ]

# 8.
# 99999999 in inctot, na in educ and empstat

# 9. drop 99999 inctot
df_with_income = df[df$inctot != 9999999,]

#df %>% filter(inctot != 9999999)

# 10. subset for empstat = employed
df_employed = df[df$empstat == 'employed',]

# 11.
#table(acs[,'educ'])
table(df_employed[,'educ'])

# 12.
mean(df_employed[df_employed$educ == 'grade 12','inctot'])

# 13.
mean(df_employed[df_employed$educ == '4 years of college','inctot'])

# 14.
no_hs_vec = c('n/a or no schooling','nursery school to grade 4','grade 5, 6, 7, or 8','grade 9','grade 10','grade 11')

mean(df_employed[df_employed$educ %in% no_hs_vec,'inctot'])

# 15.
# Average income for someone who has not finished high school:
mean(df_employed[df_employed$educ %in% no_hs_vec,'inctot'])

#Average income for someone who only completed 9th grade:
mean(df_employed[df_employed$educ == 'grade 9','inctot'])

#Average income for someone who only completed 10th grade:
mean(df_employed[df_employed$educ == 'grade 10','inctot'])

#Average income for someone who only completed 11th grade:
mean(df_employed[df_employed$educ == 'grade 11','inctot'])

#Average income for someone who finished high school (12th grade) but never started college: 
mean(df_employed[df_employed$educ == 'grade 12','inctot'])

# Average income for someone who completed 4 year of college (in the US, this means graduating from college)
mean(df_employed[df_employed$educ == '4 years of college','inctot'])

