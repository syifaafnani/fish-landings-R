# Annual landings
annual_landings <- landings_data %>% 
  mutate(Weight_kg = Weight_g / 1000) %>%
  mutate(Year=as.character(Year))%>% # convert num to char
  group_by(Year) %>% 
  summarize(Annual_Landings_kg = sum(Weight_kg,na.rm=TRUE))

annual_landings

# Annual landings grouped by gear type
annual_gear_landings <- landings_data %>% 
  mutate(Weight_kg = Weight_g / 1000) %>%
  group_by(Year,Gear) %>% 
  summarize(Annual_Landings_kg = sum(Weight_kg,na.rm=TRUE))

annual_gear_landings

# Annual average catch per unit effort
cpue_data <- landings_data %>% 
  mutate(Weight_kg = Weight_g / 1000) %>%
  group_by(Year,Trip_ID) %>% 
  summarize(Trip_CPUE = sum(Weight_kg) / mean(Effort_Hours)) %>% 
  group_by(Year) %>% 
  summarize(Mean_CPUE_kg_hour = mean(Trip_CPUE, na.rm=TRUE))

cpue_data

# Annual percentage of mature fish
# Define m95, the length at which 95% of fish are mature
m95 = 15.9

percent_mature <- landings_data %>% 
  mutate(Mature = Length_cm > m95) %>% 
  group_by(Year) %>% 
  summarize(Percent_Mature = sum(Mature) / n() * 100) 

percent_mature
