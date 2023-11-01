# Loading Packages
library(tidyverse)
library(tidymodels)
library(vroom)
library(poissonreg)
library(rpart)
library(ranger)
library(stacks)
library(embed)
library(discrim)
library(naivebayes)
library(kknn)
library(kernlab)
library(themis)

# Reading in Data
setwd("~/Desktop/Stat348/Ghouls-Goblins-Ghosts/")
train <- vroom("train.csv")
test <- vroom("test.csv")
train$type <- as.factor(train$type)



my_recipe <- recipe(type ~ ., data = train) %>%
  step_dummy(color) # dummy variable encoding
  
  
bake(prep(my_recipe), new_data = train)


