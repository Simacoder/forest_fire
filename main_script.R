# Exploring Data Through Visualizations: Independent Investigations

# Loading the packages
library(tidyverse)

forest_fires <- read.csv("data/forestfires.csv")


# What columns are in the data 
colnames(forest_fires)
# Data Processing

# `month` and `day` are character vartiables, but we know that there is an inherent order to them. We'll convert these variables into factors so that they'll be sorted into the correct order when we plot them.

forest_fires %>%pull(month) %>% unique

forest_fires %>%pull(day) %>% unique

# This guided project will assume that Sunday is the first day of the week, but feel free to adjust the levels according to what's comfortable to you. Ultimately, the levels just help us rearrange the resulting plots in an order that makes sense to us.

month_order <- c("jan", "feb", "mar",
                 "apr", "may", "jun",
                 "jul", "aug", "sep",
                 "oct", "nov", "dec")

days_order <- c("sun", "mon", "tue", "wed", "thu", "fri", "sat")

forest_fires <- forest_fires %>%
  mutate(
    month = factor(month, levels = month_order),
    day = factor(day, levels = days_order)
  )

# When Do Most Forest Fires Occur?

# We need to create a summary tibble that counts the number of fires that appears in each month. Then, we'll be able to use this tibble in a visualization. We can consider `month` and `day` to be different grouping variablse, so our code to produce the tibbles and plots will look similar.

## Month Level

fires_by_month <- forest_fires %>%
  group_by(month) %>%
  summarise(total_fires = n())

fires_by_month %>%
  ggplot(aes(x = month, y = total_fires)) + 
  geom_col() + 
  labs(
    title = "Number of forest fires in data  by month",
    y = "Fire count",
    x = "Month"
  )

# Plotting Other Variables Against Time 

forest_fires_long <- forest_fires %>%
  pivot_longer(
    cols = c("FFMC", "DMC", "DC",
             "ISI", "temp", "RH",
             "wind", "rain"),
    names_to = "data_col",
    values_to = "value"
  )

forest_fires_long %>%
  ggplot(aes(x = month, y = value)) + 
  geom_boxplot() +
  facet_wrap(vars(data_col), scales = "free_y" ) + 
  labs(
    title = "Variable changes over month",
    x = "Month",
    y = "Variable value"
  )

# Examining Forest Fire Severity

forest_fires_long %>% 
  ggplot(aes(x = value, y = area)) +
  geom_point() +
  facet_wrap(vars(data_col), scales = "free_x") +
  labs(
    title = "Relationships between other variables and area burned",
    x = "Value of column",
    y = "Area burned (hectare)"
  )