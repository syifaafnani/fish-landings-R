# how to check on missing values, typo dan Errors

landings_data[!complete.cases(landings_data),] # checking N.A or empty values
landings_data <- na.omit(landings_data)  # delete N.A values
landings_data

# typos
unique(landings_data$Gear)  # check how many types of fishing gear
landings_data = mutate(landings_data, Gear=tolower(Gear)) # convert all values in Gear to lowercase

unique(landings_data$Gear)
unique(landings_data$Species)

# check the number of data for each species
nrow(filter(landings_data, Species == "Caesoi cunning"))
nrow(filter(landings_data, Species == "Caesio cuning"))

# rename one of the species
landings_data = mutate(landings_data, Species = replace(Species, Species=="Caesoi cunning", "Caesio cuning"))

unique(landings_data$Species)

summary(landings_data$Length_cm)   # show data stat
plot(landings_data$Length_cm)  # check by using graph

# filter data by length
landings_data = filter(landings_data, Length_cm < 100)

plot(landings_data$Length_cm)


# save the clean data
write_csv(landings_data,"_data/sample_landings_data_clean.csv")
