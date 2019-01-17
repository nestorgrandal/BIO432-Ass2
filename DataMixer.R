Data=read.csv("InData.csv")
install.packages("dplyr")
library(dplyr)
x=select(Data,Total,Taxon,Scenario,Nutrients)
TotalL60=filter(x,Total>60)
TotalL60 %>%
  rename(TotalG=Total) %>%
  mutate(TotalG = TotalG/1000) %>%
  mutate(Nutrients = abbreviate(Nutrients,minlength=1)) %>%
  mutate(TotalG = gsub("\\.",",",TotalG))