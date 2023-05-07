ggplot(annual_landings, aes(x=Year,y=Annual_Landings_kg)) +
  geom_point() +
  geom_line() + 
  ylab("Annual Landings [kg/year]") + 
  ggtitle("Annual landings of Caesio cuning")

annual_gear_landings = group_by(annual_gear_landings, Year, Gear)
ggplot(annual_gear_landings, aes(x=Year,y=Annual_Landings_kg)) +
  geom_point() +
  geom_line() + 
  ylab("Normalized annual Landings [kg/year]") + 
  ggtitle("Normalized annual landings of Caesio cuning") +
  facet_wrap(~Gear)

ggplot(cpue_data,aes(x=Year,y=Mean_CPUE_kg_hour)) +
  geom_point() +
  geom_line() + 
  ylab("Median CPUE [kg/hour]") + 
  ggtitle("Median CPUE for Caesio cuning")

ggplot(filter(landings_data, Year == 2014), aes(Length_cm)) + 
  geom_histogram() + 
  xlab("Length [cm]") + 
  ggtitle("Length histogram of Caesio cuning in the catch\nLength at 95% maturity shown as a red line.") + 
  geom_vline(aes(xintercept=m95),color="red")


ggplot(filter(landings_data, Year == 2014), aes(Length_cm)) + 
  geom_histogram() + 
  xlab("Length [cm]") + 
  ggtitle("Length histogram of Caesio cuning in the catch\nLength at 95% maturity shown as a red line.") + 
  geom_vline(aes(xintercept=m95),color="red") +
  facet_wrap(~Gear)
