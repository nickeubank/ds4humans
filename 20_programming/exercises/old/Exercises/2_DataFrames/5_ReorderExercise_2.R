
###########
# Re-order all the code!
###########



possible_pets[possible_pets$domestic==1, "animal"]

possible_pets = possible_pets[not_dangerous,]

table(possible_pets$type)

possible_pets = read.csv("animals.csv")

not_dangerous = possible_pets$predator == 0 & possible_pets$venomous == 0

possible_pets = possible_pets[possible_pets$soft,]
possible_pets[possible_pets$type == "bug",]

setwd("YOUR_PATH_TO_DATA_FOLDER")
setwd("/users/nick/dropbox/joint_projects/poli_sci_boot_camp/computational_methods/exercises/data")

world = read.csv("world-small.csv")




possible_pets$soft = possible_pets$hair == 1 | possible_pets$feathers == 1

names(possible_pets)
