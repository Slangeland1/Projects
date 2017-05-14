# #######################################################################
# File-Name:  EDA_v1
# Version:  1
# Date: 02/06/17 
# Author: Stephanie Langeland 
# Purpose: To explore the SHED dataset for the data analysis class final project - can I use 
  # this dataset to understand perceived home value?  I need to get a separate data to compare
  # this against actual home value.
# Input Files: SHED 2013 - 2015
# Output Files: None yet
# Data Output: None yet
# Previous files: None 
# Dependencies: None
# Required by: Data Analysis Final Project
# Status: In progress 
# Machine: Personal 2011 MacBook Pro
# R version 3.3.1
# #######################################################################

getwd()

setwd("/Users/StephanieLangeland/Desktop/Columbia/Data Analysis/Final Project/SHED Data")

shed_2013 <- read.csv("/Users/StephanieLangeland/Desktop/Columbia/Data Analysis/Final Project/SHED Data/SHED_public_use_data_2013.csv")

summary(is.na(shed_2013))

#XYEAR is year of respondent's birthday - create age column:
shed_2013$age <- (2013 - shed_2013$XYEAR)
colnames(shed_2013)
summary(shed_2013$age)
library(ggplot2)
age_dist_2013 <- ggplot(data = shed_2013) +
  geom_histogram(mapping = aes(shed_2013$age, color = "red"), 
                   binwidth = 5)
age_dist_2013 
#^not representative of older people - note that in the paper as a limitation but also look up average death age in the USA to contexualize it.

