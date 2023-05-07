
landings_data = rename(landings_data,"Year"="yy","Date"="dat","Trip_ID"="trip", "Effort_Hours"="effort", "Gear"="gr", "Species"="sp", "Length_cm"="l_cm","Weight_g"="w_cm")
landings_data = mutate(landings_data, Date=mdy(Date))


# the above script is the same as this one below
#landings_data <- landings_data %>%
#  rename(Year = yy,
#         Date = dat,
#         Trip_ID = trip,
#         Effort_Hours = effort,
#         Gear = gr,
#         Species = sp,
#         Length_cm = l_cm,
#         Weight_g = w_cm) %>%
#  mutate(Date = mdy(Date)) 

landings_data

