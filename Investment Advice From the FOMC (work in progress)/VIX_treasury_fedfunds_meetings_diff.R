## title: "Merge and Difference Data"
## author: Stephanie Langeland 
## date: 2017-12-02
## Purpose: Merge the VIX.rds, Treasury.rds, Fed_Funds_Rates.rds, and FOMC_meeting_dates.rds.
## Difference the data.


## :::::::::::::::::: Load data

vix_data <- readRDS("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project/VIX.rds")

View(vix_data)
str(vix_data)

tbill_data <- readRDS("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project/Treasury.rds")

View(tbill_data)
str(tbill_data)

fedfunds_data <- readRDS("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project/Fed_Funds_Rates.rds")

View(fedfunds_data)
str(fedfunds_data)

FOMC_dates <- readRDS("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project/FOMC_meeting_dates.rds") 

View(FOMC_dates)
str(FOMC_dates)



## :::::::::::::::::: Merge data sets and difference the data
## ::::::::::::: Merge the vix and treasury data
merge1 <- merge(
  vix_data,
  tbill_data,
  by.x = "Date",
  all = TRUE
)

View(merge1)


## :::::::::::::::::: Merge the `merge1` with fed funds rates data
merge2 <- merge(
  merge1,
  fedfunds_data,
  by.x = "Date",
  by.y = "date",
  all = TRUE
)

View(merge2)

## :::::::::::::::::: Fed Funds Rates/Limits

## The target rate changes the day after the day 2 of each FOMC meeting:
FOMC_dates$day_after_Day_2_Meeting <- FOMC_dates$Day_2_Meeting + 1

targets <- merge(
  FOMC_dates,
  fedfunds_data,
  by.x = "day_after_Day_2_Meeting",
  by.y = "date",
  all = FALSE
)

View(targets)

targets <- targets[ , -c(2:3)] ## remove Day_1_Meeting:Day_2_Meeting columns

dim(targets)

library(QMSS)

targets_FD <- summarise(targets,
                        day_after_Day_2_Meeting = day_after_Day_2_Meeting, 
                        Target_Fed_Funds_Lower_Limits_diff = firstD(Target_Fed_Funds_Lower_Limits),
                        Target_Fed_Funds_Upper_Limits_diff = firstD(Target_Fed_Funds_Upper_Limits),
                        Federal_Funds_Target_Rate_diff = firstD(Federal_Funds_Target_Rate))

View(targets_FD)

## since the upper and lower limits are already changed in the same increment, combine the upper limit and target rate to create one column of target fed funds changes:

targets_FD$target_rate_change <- rowSums(targets_FD[ ,
                                              c("Target_Fed_Funds_Upper_Limits_diff", 
                                                "Federal_Funds_Target_Rate_diff")],
                                  na.rm = TRUE)

## :::::::::::::::::: Merge the `merge2` with `targets_FD`

merge3 <- merge(merge2,
                targets_FD,
                by.x = "Date",
                by.y = "day_after_Day_2_Meeting",
                all = TRUE)

View(merge3)


## :::::::::::::::::: Merge the `merge3` with FOMC meeting dates
## ::::: Subset the FOMC dates into day 1, day 2, and day after day 2 data sets in order to merge

FOMC_dates$fomc_day_1 <- "fomc_meeting_day_1"

FOMC_dates$fomc_day_2 <- "fomc_meeting_day_2"

FOMC_dates$day_after_fomc_day_2 <- "day_after_fomc_day_2"

library(dplyr)

day_1 <- subset(
  FOMC_dates,
  select = c("Day_1_Meeting",
             "fomc_day_1")
)

merge4 <- merge(
  merge3,
  day_1,
  by.x = "Date",
  by.y = "Day_1_Meeting",
  all = TRUE
)

day_2 <- subset(
  FOMC_dates,
  select = c("Day_2_Meeting",
             "fomc_day_2")
)

merge5 <- merge(
  merge4,
  day_2,
  by.x = "Date",
  by.y = "Day_2_Meeting",
  all = TRUE
  
)

day_after_day_2 <- subset(
  FOMC_dates,
  select = c("day_after_Day_2_Meeting",
             "day_after_fomc_day_2")
)

merge6 <- merge(
  merge5,
  day_after_day_2,
  by.x = "Date",
  by.y = "day_after_Day_2_Meeting",
  all = TRUE
)


## :::::::::::::::::: Difference: Vix: adjclose - open
merge6$vix_diff <- merge6$vix_adjclose - merge6$vix_open


## :::::::::::::::::: Difference: Treasury: adjclose - open
merge6$`10_yr_treasury_diff` <- merge6$`10_yr_treasury_adjclos` - merge6$`10_yr_treasury_open`

View(merge6)



## :::::::::::::::::: Rearrange the columns so that its readable

colnames(merge6)

VIX_treasury_fedfunds_meetings_diff <- merge6[ , c(
  "Date", 
  "fomc_day_1", 
  "fomc_day_2", 
  "day_after_fomc_day_2", 
  "vix_open", 
  "vix_high", 
  "vix_low", 
  "vix_close", 
  "vix_adjclose", 
  "10_yr_treasury_open", 
  "10_yr_treasury_high", 
  "10_yr_treasury_low", 
  "10_yr_treasury_close", 
  "10_yr_treasury_adjclose", 
  "Target_Fed_Funds_Lower_Limits", 
  "Target_Fed_Funds_Upper_Limits", 
  "Federal_Funds_Target_Rate", 
  "Target_Fed_Funds_Lower_Limits_diff", 
  "Target_Fed_Funds_Upper_Limits_diff", 
  "Federal_Funds_Target_Rate_diff",
  "target_rate_change",
  "vix_diff", 
  "10_yr_treasury_diff"
)]

View(VIX_treasury_fedfunds_meetings_diff)

summary(VIX_treasury_fedfunds_meetings_diff)



## :::::::::::::::::: Save final data set

setwd("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project")

saveRDS(VIX_treasury_fedfunds_meetings_diff,
        file = "VIX_treasury_fedfunds_meetings_diff.rds")
