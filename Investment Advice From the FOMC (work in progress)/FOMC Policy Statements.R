## title: "Get FOMC Meeting Dates"
## author: Stephanie Langeland      
##date: 2017-11-22
## Purpose: This file outlines how FOMC meeting dates are obtained. 


## ::::::::: Part 1: Function to Obtain Archieved FOMC Meeting Dates (1995 - 2011)

library(httr)
library(rvest)
library(EconFiData)

meeting_dates  <- NULL ## create empty data frame

for (i in seq(1995, 2011)) { 
  tmp <- get_historical_dates(i)
  meeting_dates <- rbind(meeting_dates, tmp)
} ## get all meeting dates from 1995-2011

View(meeting_dates)

##:::::::: Clean Data:
##:::::::: Obtain the Year of Each Meeting:
library(stringr)

meeting_dates$year <- str_extract_all(meeting_dates$historical_text,
                                      "- [19|20].*") ## extract text (year) after "19" or "20"

meeting_dates$year <- str_replace_all(meeting_dates$year,
                                      "[:punct:]",
                                      "") ## remove punctuation

meeting_dates$historical_text <- str_replace_all(meeting_dates$historical_text,
                                                 "- [19|20].*",
                                                 "") ## remove years from original data

meeting_dates$historical_text <- tolower(meeting_dates$historical_text) ## convert all text to lower case

meeting_dates$historical_text <- str_replace_all(meeting_dates$historical_text,
                                                 "meeting",
                                                 "") ## remove "meeting"

meeting_dates$historical_text <- str_replace_all(meeting_dates$historical_text,
                                                 "conference",
                                                 "") ## remove "conference"

meeting_dates$historical_text <- str_replace_all(meeting_dates$historical_text,
                                                 "call",
                                                 "") ## remove "call"

meeting_dates$month_one <- str_extract_all(meeting_dates$historical_text,
                                           ".*-") ## extract all text before "-"

meeting_dates$month_one <- ifelse(
  meeting_dates$month_one == "character(0)",
  meeting_dates$historical_text,
  meeting_dates$month_one
) ## for each meeting that occured in the same month

meeting_dates$month_one <- str_replace_all(meeting_dates$month_one,
                                           "[:punct:]",
                                           "") ## remove punctuation

meeting_dates$day_one <- str_extract_all(meeting_dates$month_one,
                                         "[:digit:]") ## extract digits for day_one of meeting

meeting_dates$day_one <- str_replace_all(meeting_dates$day_one,
                                         "[:punct:]",
                                         "") ## remove punctuation

meeting_dates$day_one <- str_replace_all(meeting_dates$day_one,
                                         "c",
                                         "") ## remove "c"

meeting_dates$day_one <- str_replace_all(meeting_dates$day_one,
                                         " ",
                                         "") ## remove single space

meeting_dates$month_one <- str_replace_all(meeting_dates$month_one,
                                           "[:digit:]",
                                           "") ## remove digits 

meeting_dates$month_two <- str_extract_all(meeting_dates$historical_text,
                                           "-.*") ## extract text after "-"

meeting_dates$day_two <- meeting_dates$month_two ## create day_two variable

meeting_dates$month_two <- ifelse(
  meeting_dates$month_two == "character(0)",
  meeting_dates$month_one,
  meeting_dates$month_two) ## for each meeting that occured within the same month

meeting_dates$day_two <- ifelse(
  meeting_dates$day_two == "character(0)",
  meeting_dates$day_one,
  meeting_dates$day_two
) ## get day 2

meeting_dates$month_two <- str_replace_all(meeting_dates$month_two,
                                           "[:punct:]",
                                           "") ## remove punctuation

meeting_dates$day_two <- str_replace_all(meeting_dates$day_two,
                                         "[:punct:]",
                                         "") ## remove punctuation

meeting_dates$month_two <- str_replace_all(meeting_dates$month_two,
                                           "[:digit:]",
                                           "") ## remove digits

meeting_dates$month_two <- ifelse(
  meeting_dates$month_two == "  ",
  meeting_dates$month_one,
  meeting_dates$month_two
) ## get month_two

meeting_dates$day_two <- str_replace_all(meeting_dates$day_two,
                                         "[:alpha:]",
                                         "") ## remove letters

meeting_dates <- meeting_dates[ , c(
  "month_one",
  "day_one",
  "month_two",
  "day_two",
  "year"
)] ## create final data frame

View(meeting_dates)

  

## :::::::::::::::::::: Part 2: Obtain Current FOMC Meeting Dates (2012 - Present)

current_url <- "https://www.federalreserve.gov/monetarypolicy/fomccalendars.htm"

current_import <- GET(current_url)
current_import

current_content <- content(current_import,
                           as = "text")
current_content


library(rvest)

current_page <- read_html(
  current_url
)

current_page



##:::::::: Obtain the Month of Each Meeting:
current_nodes_months <- html_nodes(
  current_page,
  ".col-md-2" ## month for all years
) ## extract month nodes

months_table <- capture.output(for (i in seq(1, 58)) {
  thing <- capture.output(print(current_nodes_months[[i]]))
  table(print(thing))
}) ## extract raw month


##:::::::: Convert to a Data Frame and Extract the Month of Each Meeting:
months_table <- as.data.frame(matrix(months_table)) ## convert to data frame

str(months_table) 
months_table$V1 <- as.character(months_table$V1) ## convert from factor to character

library(stringr)
months_table$month <- str_extract_all(months_table$V1,
                                      "<strong>.*</strong>") ## extract months in between "strong"

months_table$month <- str_replace_all(months_table$month,
                                      "<strong>",
                                      "") ## replace "<strong>" this with blanks

months_table$month <- str_replace_all(months_table$month,
                                      "</strong>",
                                      "") ## replace "</strong>" this with blanks

months_table$month <- str_replace_all(months_table$month,
                                      "character[(]0[)]",
                                      "") ## replace "character(0)" this with blanks

months_table$month <- ifelse(months_table$month == "",
                             NA,
                             months_table$month) ## replace NAs with blanks

months_table <- na.omit(months_table) ## omit lines without month data

months_table$month_one <- str_extract_all(months_table$month,
                                          ".*/") ## extract month #1

months_table$month_two <- str_extract_all(months_table$month,
                                          "/.*") ## extract month #2

months_table$month_one <- str_replace_all(months_table$month_one,
                                          "[:punct:]",
                                          "") ## remove punctuation 

months_table$month_two <- str_replace_all(months_table$month_two,
                                          "[:punct:]",
                                          "") ## remove punctuation 


months_table$month_one <- ifelse(
  months_table$month_one == "character0",
  months_table$month,
  months_table$month_one
) ## when month #1 == month #1

months_table$month_two <- ifelse(
  months_table$month_two == "character0",
  months_table$month,
  months_table$month_two
) ## when month #1 == month #1


dates_table <- months_table[, c("month_one", "month_two")]



##:::::::: Obtain the Days of Each Meeting:
current_nodes_days <- html_nodes(
  current_page,
  ".col-md-10" ## days for all years
)

days_table <- capture.output(for (i in seq(1, 58)) {
  thing <- capture.output(print(current_nodes_days[i]))
  table(print(thing))
}) ## extract all days

##:::::::: Convert to a Data Frame and Extract the Days of Each Meeting:
days_table <- as.data.frame(days_table) ## convert to data frame
str(days_table) 
days_table$days_table <- as.character(days_table$days_table)

days_table$days <- str_extract_all(days_table$days_table,
                                   ">.*</div>") ## extract days

days_table$days <- str_replace_all(days_table$days,
                                   "[(]unscheduled[)]", ## replace unscheduled with "-"
                                   "-")

days_table$days <- str_replace_all(days_table$days,
                                   "character[(]0[)]",
                                   "") ## replace "character()" with blank


days_table$days <- str_replace_all(days_table$days,
                                   ">",
                                   "") ## replacement

days_table$days <- str_replace_all(days_table$days,
                                   "</div",
                                   "") ## replacement

days_table$day_one <- str_extract_all(days_table$days,
                                      ".*-") ## extract everything before "-"

days_table$day_two <- str_extract_all(days_table$days,
                                      "-.*") ## extract everything afer "-"

days_table$day_one <- ifelse(
  days_table$day_one == "character(0)",
  days_table$days,
  days_table$day_one
) ## extract special cases

days_table$day_two <- ifelse(
  days_table$day_two == "character(0)",
  days_table$days,
  days_table$day_two
) ## extract special cases

days_table$day_one <- str_replace_all(days_table$day_one,
                                      "[:punct:]", ## remove punctuation
                                      "")

days_table$day_two <- str_replace_all(days_table$day_two,
                                      "[:punct:]", ## remove punctuation
                                      "")

days_table$day_two <- ifelse(
  days_table$day_two == "",
  days_table$day_one,
  days_table$day_two
) ## when day #1 == day #2


days_table$day_one <- ifelse(days_table$day_one == "",
                             NA,
                             days_table$day_one) ## replace blanks with NA

days_table$day_two <- ifelse(days_table$day_two == "",
                             NA,
                             days_table$day_two) ## replace blanks with NA

days_table <- na.omit(days_table)

days_table <- days_table[ , c("day_one", "day_two")]



##:::::::: Obtain the Year of Each Meeting:
current_nodes_years <- html_nodes(
  current_page,
  ".panel-default" ## years
)

years_table <- capture.output(for (i in seq(1, 7)) {
  thing <- capture.output(print(current_nodes_years[i]))
  table(print(thing))
}) ## extract raw year

##:::::::: Convert to a Data Frame and Extract the Days of Each Meeting:
years_table <- as.data.frame(years_table)
str(years_table)

years_table$years_table <- as.character(years_table$years_table)

years_table$year <- str_extract_all(years_table$years_table,
                                    ">201.*FOMC") ## extract everything after

years_table$year <- str_replace_all(years_table$year,
                                    ">",
                                    "") ## replacement

years_table$year <- str_replace_all(years_table$year,
                                    "FOMC",
                                    "") ## replacement 

years_table$year <- ifelse(
  years_table$year == "character(0)",
  NA,
  years_table$year
) ## these rows don't contain useful info and will be deleted in future

years_table <- na.omit(years_table)

years_table <- years_table[, 2]


##:::::::: Create unique identifiers and merge data frames:
dates_table$ID <- seq(1, 58)
days_table$ID <- seq(1, 58)

dates_data <- merge(
  dates_table,
  days_table,
  by = "ID"
)


##:::::::: Every January starts a new year in dates_data:

dates_data$year <- "" ## create blank year variable/column

dates_data[1:8, "year"] <- years_table[1]

dates_data[9:16, "year"] <- years_table[2]

dates_data[17:24, "year"] <- years_table[3]

dates_data[25:33, "year"] <- years_table[4]

dates_data[34:42, "year"] <- years_table[5]

dates_data[43:50, "year"] <- years_table[6]

dates_data[51:58, "year"] <- years_table[7]

View(dates_data)
  

## :::::::::: Part 3: Create Data Set of All FOMC Meeting Dates:

dates_data <- dates_data[ , -1] ## delete "ID column"

colnames(meeting_dates)
colnames(dates_data)

FOMC_dates <- rbind(
  meeting_dates,
  dates_data
)

str(FOMC_dates)

FOMC_dates$day_one <- as.numeric(FOMC_dates$day_one)
FOMC_dates$day_two <- as.numeric(FOMC_dates$day_two)
FOMC_dates$year <- as.numeric(FOMC_dates$year)

View(FOMC_dates)



##:::::::::::::::::::::::: Convert to "YYYY-MM-DD" format:
str(FOMC_dates)

FOMC_dates$month_one <- tolower(FOMC_dates$month_one)
FOMC_dates$month_two <- tolower(FOMC_dates$month_two)



FOMC_dates$day_one_formatted <- paste0(
  FOMC_dates$year,
  "-",
  FOMC_dates$day_one,
  "-",
  FOMC_dates$month_one
)

FOMC_dates$day_one_formatted <- as.Date(FOMC_dates$day_one_formatted,
                                        "%Y-%d-%B")

FOMC_dates$day_two_formatted <- paste0(
  FOMC_dates$year,
  "-",
  FOMC_dates$day_two,
  "-",
  FOMC_dates$month_two
)

FOMC_dates$day_two_formatted <- as.Date(FOMC_dates$day_two_formatted,
                                        "%Y-%d-%B")

FOMC_dates <- FOMC_dates[ , 6:7]

colnames(FOMC_dates)[1] <- "Day_1_Meeting"
colnames(FOMC_dates)[2] <- "Day_2_Meeting"



##:::::::::::::::::::::::: Save as RDS file:
setwd("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project")

saveRDS(FOMC_dates,
        file = "FOMC_meeting_dates.rds")
  

 
test_dates <- readRDS("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project/FOMC_meeting_dates.rds")
  
View(test_dates)
str(test_dates)
