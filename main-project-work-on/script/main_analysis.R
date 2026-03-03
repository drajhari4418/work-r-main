#PACKAGES REQUIRED-----

#if(!require(pacman))install.packages("pacman")
#pacman::p_load(tidyverse, inspectdf,plotly, janitor, visdat, esquisse,here)


#load data----
library(tidyverse)
library(inspectdf)
library(plotly)
library(janitor)
library(visdat)
library(esquisse)
library(here)
ebola_sierra_leone <- read_csv(here("data/ebola_sierra_leone.csv"))
#DATA EXPLORATION(cases under district)-----
district_tab <- tabyl(ebola_sierra_leone, district)
district_tab

write.csv(x = district_tab, file = "outputs/district tabulation.csv")
#DATA EXPLORATION(in a categorical variables)-----
cat_summary <- inspect_cat(ebola_sierra_leone)

categorical_variables_plot <- ggplot(cat_summary,
                                     aes(x = col_name, y = cnt)) +
  geom_col(fill = "#112446")

ggplotly(categorical_variables_plot)
ggsave(categorical_variables_plot , filename = "outputs/categorical variables plot.png")
#DATA EXPLORATION(in a numerical value)-----


#num_summary <- inspect_num(ebola_sierra_leone)
#ggsave(num_summary , filename = "outputs/numerical variables plot.png")
#num_summary_plot <- ggplot(num_summary,
#                           aes(x = col_name, y = cnt)) +
#  geom_col(fill = "#112446")
#ggplotly(num_summary_plot)


p <- ggplot(ebola_sierra_leone,
            aes(x = age, fill = status)) +
  geom_histogram(bins = 30, position = "identity", alpha = 0.6) +
  theme_minimal()

ggplotly(p)


