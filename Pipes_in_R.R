#Load data
data("ToothGrowth")
View(ToothGrowth)

#Install package for analysis
install.packages("dplyr")
library(dplyr)

filter_tg <- filter(ToothGrowth,dose==0.5)
View(filter_tg)
arrange(filter_tg,len)

#Nested Function
arrange(filter(ToothGrowth,dose==0.5),len)

#Using pipes
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  arrange(len)

#Finding mean
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarize(mean_len=mean(len,na.rm=T),.groups ="drop")
