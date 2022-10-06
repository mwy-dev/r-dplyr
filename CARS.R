rm(list=ls())

#Michal Wysocki

# install.packages("ggplot2")
# install.packages("dplyr")

library(ggplot2)
library(dplyr)

#_______________________________________________________________________
#1

d = as_tibble(
  x = read.csv(
    file = "data_2.csv"))

offers=aggregate(
  d$Engine_capacity, 
  by=list(Brand=d$Brand, EngineCap=d$Engine_capacity), FUN=length)

NumOfOffers=offers$x
x11()
ggplot(offers, aes(x = EngineCap, y = Brand, size=NumOfOffers, alpha = NumOfOffers)) +
  geom_point(colour="blue")+
theme_bw()