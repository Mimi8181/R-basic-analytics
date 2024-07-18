data('ToothGrowth')
View(ToothGrowth)

filtred_tg <- filter(ToothGrowth, dose==0.5)
View(filtred_tg)
arrange(filtered_tg, len)

#Use pipe to multiple action
filtered_toothG <- ToothGrowth %>%
  filter(dose==0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = T), .group = "drop")


#Dataset diamonds from ggplot2
library(ggplot2)
data("diamonds")
head(diamonds)

#dataset info
str(diamonds)

#add new column
mutate(diamonds, carat2 = carat * 10)


#CLEANING DATA
install.packages("here")
install.packages("skimr")
install.packages("janitor")
install.packages("palmerpenguins")
install.packages("tidyr")

#load packages
library("here")
library("skimr")
library("janitor")
library("palmerpenguins")
library("tidyr")

#dataset information
skim_without_charts(penguins)
glimpse(penguins)

penguins %>%
  select(-species) 

clean_names(penguins)

penguins %>%
  rename(island_new = island)

#SORT DATA
penguins2 <- penguins %>% arrange(-bill_length_mm) # ASC

penguins %>% group_by(species, island) %>% drop_na() %>% summarize(mean_bl = mean(bill_length_mm))

penguins %>% filter(species == "Adelie")



#VISUALIZATION
library(ggplot2)


ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, shape=species, color=species))