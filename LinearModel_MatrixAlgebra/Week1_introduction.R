install.packages("UsingR")
library(UsingR)
library("dplyr")
data("father.son", package = "UsingR")
# 1.What is the average height of the sons (don't round off)?
install.packages("magrittr")
library("magrittr")
head("father.son")
father.son["sheight"]
averageSonHeight <- select(father.son, sheight) %>% unlist
mean(averageSonHeight)
# What is the mean of the son heights for fathers that have a height of 71 inches?
fatherHeight71 <- filter(father.son,round(fheight)==71) %>% select(sheight) %>% unlist %>% mean
fatherHeight71
