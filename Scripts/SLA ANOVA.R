library(vegan)
library(car)
library(tidyverse)

SLA <- read.csv("Data/SLA_Canadian cities.csv")
glimpse(SLA)

#histogram
histogram <- ggplot(SLA, aes(x=value, fill=City)) +
  facet_wrap(~City) + geom_histogram(bins = 50)
histogram

#one way anova
anova <- lm(value~City, data=SLA)
summary(anova)

Anova(anova, type="2")

#Response: value
#Sum Sq   Df F value Pr(>F)
#City         889    5  1.5407 0.1739
#Residuals 253337 2195 