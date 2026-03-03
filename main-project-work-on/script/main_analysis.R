#PACKAGES REQUIRED-----
if(!require(pacman))install.packages("pacman")
pacman::p_load(tidyverse, inspectdf,plotly, janitor, visdat, esquisse)
#load data----
ebola_sierra_leone <- read_csv("data/ebola_sierra_leone.csv")

