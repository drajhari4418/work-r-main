if(!require(pacman)) install.packages("pacman")
pacman::p_load(tidyverse,gt,outbreaks)


#data(inbuilt) of earthquakes happened

quakes

#task to show data in ascending order referencing to magnitude(mag)

arrange(quakes, mag)

#task to show in descending order referencing to magnitude(mag)er

desc_data <- arrange(quakes, -mag)

#task to perform to show 5 datasets only

head(desc_data, 5)

#now comes pipes role in R, we can do all above task in one line of code using pipes

quakes %>% # this symbol = %>% is used to define pipes in r language.
  arrange(-mag) %>%
  head(5)