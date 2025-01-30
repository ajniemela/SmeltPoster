
# GETTING SET UP ###############################

install.packages("tidyverse")
install.packages("ggplot2")
install.packages("readr")
install.packages("vegan")
install.packages("readxl")

library(readxl)
library(tidyverse)
library(ggplot2)
library(readr)
library(vegan)

# Data #################################


morph_observed<-read_excel("X:/Special Studies/Smelt_Morphometrics/data/NDFS2024_smelt_morphometrics.xlsx")

# creating subset ####
## Subset includes only smelt that were photographed in aquarium ####

aquarium_smelt<- morph_observed %>% 
  select(morph_observed)

nonfv_smelt<- morph_observed %>% 
  select(morph_observed)


aquarium_smelt <- subset(morph_observed, !is.na(Photo_fv)) #Note to self: is.na used to check for N/A, ! NEGATES logical condition
view(Aquarium_Smelt)

nonfv_smelt <- subset(morph_observed, is.na(Photo_fv))
view(nonfv_smelt)
