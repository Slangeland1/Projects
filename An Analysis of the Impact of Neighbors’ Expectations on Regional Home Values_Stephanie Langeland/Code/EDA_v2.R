# #######################################################################
# File-Name:  EDA_v2
# Version:  2
# Date: 02/20/17 
# Author: Stephanie Langeland 
# Purpose: Create a SHED dataset with only variables that I want to examine. 
# Input Files: SHED 2013 - 2015
# Output Files: None yet
# Data Output: None yet
# Previous files: EDA_v1
# Dependencies: EDA_v1
# Required by: Data Analysis Final Project
# Status: In progress 
# Machine: Personal 2011 MacBook Pro
# R version 3.3.1
# #######################################################################

rm(list = ls(all = TRUE))   # cleans everything in the workspace

path <- "/Users/StephanieLangeland/Desktop/Columbia/Data Analysis/Final Project"

shed_data  <- "/SHED Data"

setwd(path)
getwd()

# Part 1:  SHED Data
shed13 <- read.csv("/Users/StephanieLangeland/Desktop/Columbia/Data Analysis/Final Project/SHED Data/SHED_public_use_data_2013.csv")
shed14 <- read.csv("/Users/StephanieLangeland/Desktop/Columbia/Data Analysis/Final Project/SHED Data/SHED_public_use_data_2014_update (occupation industry).csv")
shed15 <- read.csv("/Users/StephanieLangeland/Desktop/Columbia/Data Analysis/Final Project/SHED Data/SHED 2015 public use.csv")

# ::::::::::::Create individual datasets for each year and format the output so 
# ::::::::::::that it is uniform in each data frame:

# Create year_comp variable = year survey was completed: 
shed13$year_comp <- c("2013")
shed14$year_comp <- c("2014")
shed15$year_comp <- c("2015")

# 2013:
shed_master <- data.frame(shed13$CaseID) # create shed_master data.frame
names(shed_master)[names(shed_master) == "shed13.CaseID"] <- "CaseID" #rename CaseID column

shed_master$year_comp <- shed13$year_comp 

shed_master$H4 <- shed13$H4

shed_master$H1 <- shed13$H1

shed_master$year_buy <- shed13$H0

shed_master$MSA <- shed13$PPMSACAT

shed_master$region <- shed13$PPREG4

shed_master$state_region <- shed13$PPREG9

# 2014:
shed_master1 <- data.frame(shed14$CaseID) 
names(shed_master1)[names(shed_master1) == "shed14.CaseID"] <- "CaseID" 

shed_master1$year_comp <- shed14$year_comp 

shed_master1$H4 <- shed14$H4

shed_master1$H1 <- shed14$H1

shed_master1$year_buy <- shed14$D6

shed_master1$MSA <- shed14$ppmsacat

shed_master1$region <- shed14$ppreg4

shed_master1$state_region <- shed14$ppreg9

# 2015:
shed_master2 <- data.frame(shed15$CaseID) 
names(shed_master2)[names(shed_master2) == "shed15.CaseID"] <- "CaseID" 

shed_master2$year_comp <- shed15$year_comp 

shed_master2$H4 <- shed15$H4
summary(shed_master2$H4)
library(car)
shed_master2$H4 <- recode(shed_master2$H4, " 'Refused' = -1")
shed_master2$H4 <- recode(shed_master2$H4, " 'Go down by a lot' = 1")
shed_master2$H4 <- recode(shed_master2$H4, " 'Go down by a little' = 2")
shed_master2$H4 <- recode(shed_master2$H4, " 'Stay about the same' = 3")
shed_master2$H4 <- recode(shed_master2$H4, " 'Go up by a little' = 4")
shed_master2$H4 <- recode(shed_master2$H4, " 'Go up by a lot' = 5")
shed_master2$H4 <- recode(shed_master2$H4, " \"Don't know\" = 8")
shed_master2$H4 <- recode(shed_master2$H4, " '' = NA")

shed_master2$H1 <- shed15$H1
summary(shed_master2$H1)
shed_master2$H1 <- recode(shed_master2$H1, " 'Refused' = -1")
shed_master2$H1 <- recode(shed_master2$H1, " 'Value is a lot lower' = 1")
shed_master2$H1 <- recode(shed_master2$H1, " 'Value is a little lower' = 1")
shed_master2$H1 <- recode(shed_master2$H1, " 'Value has stayed the same' = 2")
shed_master2$H1 <- recode(shed_master2$H1, " 'Value is a little higher' = 3")
shed_master2$H1 <- recode(shed_master2$H1, " 'Value is a lot higher' = 3")
shed_master2$H1 <- recode(shed_master2$H1, " \"Don't Know\" = 8")
shed_master2$H1 <- recode(shed_master2$H1, " '' = NA")

shed_master2$year_buy <- shed15$GH2

shed_master2$MSA <- shed15$ppmsacat
summary(shed_master2$MSA)
shed_master2$MSA <- recode(shed_master2$MSA, " 'Non-Metro' = 0")
shed_master2$MSA <- recode(shed_master2$MSA, " 'Metro' = 1")

shed_master2$region <- shed15$ppreg4
summary(shed_master2$region)
shed_master2$region <- recode(shed_master2$region, " 'Northeast' = 1")
shed_master2$region <- recode(shed_master2$region, " 'Midwest' = 2")
shed_master2$region <- recode(shed_master2$region, " 'South' = 3")
shed_master2$region <- recode(shed_master2$region, " 'West' = 4")

shed_master2$state_region <- shed15$ppreg9
summary(shed_master2$state_region)
shed_master2$state_region <- recode(shed_master2$state_region, " 'New England' = 1")
shed_master2$state_region <- recode(shed_master2$state_region, " 'Mid-Atlantic' = 2")
shed_master2$state_region <- recode(shed_master2$state_region, " 'East-North Central' = 3")
shed_master2$state_region <- recode(shed_master2$state_region, " 'West-North Central' = 4")
shed_master2$state_region <- recode(shed_master2$state_region, " 'South Atlantic' = 5")
shed_master2$state_region <- recode(shed_master2$state_region, " 'East-South Central' = 6")
shed_master2$state_region <- recode(shed_master2$state_region, " 'West-South Central' = 7")
shed_master2$state_region <- recode(shed_master2$state_region, " 'Mountain' = 8")
shed_master2$state_region <- recode(shed_master2$state_region, " 'Pacific' = 9")

summary(shed_master2)
