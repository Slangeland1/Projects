## title: "Get Target Federal Funds Rates and Bounds"
## author: Stephanie Langeland   
##date: 2017-11-22
## Purpose: This file outlines how Target Federal Funds Rates and Limits data were obtained. 



## :::::::::::::::::: Part 1: Obtain All Target Fed Funds Rates (09/27/1982 - 12/15/2008):
## link to get the ID# fro API call: https://fred.stlouisfed.org/series/DFEDTAR

library(httr)
library(jsonlite)
library(EconFiData)

setwd("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project")

Federal_Funds_Target_Rate <-  get_series_obs(series_id = "DFEDTAR",
                                             observation_start = "1995-01-01",
                                             observation_end = "2008-12-15",
                                             user_api = Sys.getenv("FRED_API"),
                                             frequency = "d",
                                             name_rds = "Federal_Funds_Target_Rate.rds"
                                             )

View(Federal_Funds_Target_Rate)

str(Federal_Funds_Target_Rate)

Federal_Funds_Target_Rate_df <- as.data.frame(Federal_Funds_Target_Rate$observations)

View(Federal_Funds_Target_Rate_df)

colnames(Federal_Funds_Target_Rate_df)[4] <- "Federal_Funds_Target_Rate"

Federal_Funds_Target_Rate_df <- Federal_Funds_Target_Rate_df[ c("date",
                                                                "Federal_Funds_Target_Rate")]

saveRDS(Federal_Funds_Target_Rate_df,
        file = "Federal_Funds_Target_Rate.rds")



## :::::::::::::::::: Part 2: Obtain All Target Fed Funds Upper Limits (12/15/2008 - Present):
## link to get the ID# fro API call: https://fred.stlouisfed.org/series/DFEDTARU

Target_Fed_Funds_Upper_Limits <- get_series_obs(series_id = "DFEDTARU",
                                                observation_start = "2008-12-16",
                                                observation_end = Sys.Date(),
                                                user_api = Sys.getenv("FRED_API"),
                                                frequency = "d",
                                                name_rds = "Target_Fed_Funds_Upper_Limits.rds"
                                                )

View(Target_Fed_Funds_Upper_Limits)

str(Target_Fed_Funds_Upper_Limits)

Target_Fed_Funds_Upper_Limits <- as.data.frame(Target_Fed_Funds_Upper_Limits$observations)

View(Target_Fed_Funds_Upper_Limits)

str(Target_Fed_Funds_Upper_Limits)

saveRDS(Target_Fed_Funds_Upper_Limits,
        "Target_Fed_Funds_Upper_Limits.rds")



## :::::::::::::::::: Part 3: Obtain All Target Fed Funds Lower Limits (12/15/2008 - Present):
## link to get the ID# fro API call: https://fred.stlouisfed.org/series/DFEDTARL

Target_Fed_Funds_Lower_Limits <- get_series_obs(series_id = "DFEDTARL",
                                                observation_start = "2008-12-16",
                                                observation_end = Sys.Date(),
                                                user_api = Sys.getenv("FRED_API"),
                                                frequency = "d",
                                                name_rds = "Target_Fed_Funds_Lower_Limits.rds"
                                                )

View(Target_Fed_Funds_Lower_Limits)

str(Target_Fed_Funds_Lower_Limits)

Target_Fed_Funds_Lower_Limits <- as.data.frame(Target_Fed_Funds_Lower_Limits$observations)

View(Target_Fed_Funds_Lower_Limits)

str(Target_Fed_Funds_Lower_Limits)

saveRDS(Target_Fed_Funds_Lower_Limits,
        "Target_Fed_Funds_Lower_Limits.rds")



## :::::::::::::::::: Part 4: Merge the data dets from parts 2-3 and create an RDS file:

colnames(Target_Fed_Funds_Lower_Limits)[4] <- "Target_Fed_Funds_Lower_Limits"
colnames(Target_Fed_Funds_Upper_Limits)[4] <- "Target_Fed_Funds_Upper_Limits"



Target_Fed_Funds_Limits <- cbind(Target_Fed_Funds_Lower_Limits,
                                 Target_Fed_Funds_Upper_Limits,
                                 by = "date"
                                 )

View(Target_Fed_Funds_Limits)

summary(Target_Fed_Funds_Limits[ , 3] == Target_Fed_Funds_Limits[ , 7]) ## verify that the dates are the same

Target_Fed_Funds_Limits <- Target_Fed_Funds_Limits[ , c("date",
                                                         "Target_Fed_Funds_Lower_Limits",
                                                         "Target_Fed_Funds_Upper_Limits")]



## :::::::::::::::::: Part 5: Merge the data dets from parts 1 and 4 and create an RDS file:
## Make sure each data frame has the same column names for the merge:
Federal_Funds_Target_Rate_df$Target_Fed_Funds_Lower_Limits <- ""

Federal_Funds_Target_Rate_df$Target_Fed_Funds_Upper_Limits <- ""

Target_Fed_Funds_Limits$Federal_Funds_Target_Rate <- ""


Fed_Funds_Rates <- rbind(Target_Fed_Funds_Limits,
                         Federal_Funds_Target_Rate_df,
                         by = "date")

View(Fed_Funds_Rates)

Fed_Funds_Rates <- Fed_Funds_Rates[-8364, ]

str(Fed_Funds_Rates)

Fed_Funds_Rates$date <- as.Date(Fed_Funds_Rates$date)

Fed_Funds_Rates$Target_Fed_Funds_Lower_Limits <- as.numeric(Fed_Funds_Rates$Target_Fed_Funds_Lower_Limits)

Fed_Funds_Rates$Target_Fed_Funds_Upper_Limits <- as.numeric(Fed_Funds_Rates$Target_Fed_Funds_Upper_Limits)

Fed_Funds_Rates$Federal_Funds_Target_Rate <- as.numeric(Fed_Funds_Rates$Federal_Funds_Target_Rate)

saveRDS(Fed_Funds_Rates,
        "Fed_Funds_Rates.rds")
