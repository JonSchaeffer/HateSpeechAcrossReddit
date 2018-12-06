##### Load libraries
library(tidyverse)



##### Import data
dataReddit <- read.table(file.choose(), header = TRUE, sep = ",")



##### Plots

##### Hate speech % each year with election years and midterms marked
dataReddit %>% ggplot(aes(x = year, y = Hatespeech.)) + geom_point() + theme(axis.text.x = element_text(angle = 90)) + geom_vline(xintercept = 36, color = "red") + geom_vline(xintercept = 85, color = "red") + geom_vline(xintercept = 12, color = "blue") + geom_vline(xintercept = 60, color = "blue")
