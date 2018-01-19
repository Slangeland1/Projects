## title: "Get VIX Data"
## author: Stephanie Langeland 
##date: 2017-11-29
## Purpose: This file outlines how VIX data were obtained. 

FOMC_dates <- readRDS("/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project/FOMC_meeting_dates.rds") ## retrieve first FOMC statement release date

FOMC_dates[1, 1] ## get first FOMC policy statement release date


## :::::::::::::::::: Part 1: Create the Yahoo Finance URL:

library(rvest)
library(EconFiData)

final_url <- get_yf_url(start_date = "1995-01-13",
                        end_date = "2017-12-02",
                        ticker = "%5EVIX")



## :::::::::::::::::: Part 2: Scrape Yahoo Finance Historical Data:
## **** Disclaimer: The following code was run on a MacBook Pro using Google Chrome.
## step 1 (initial install): Install Docker: Run in Terminal: "brew cask install docker"
## step 2: open docker in apps
## step 3: start docker
## step 4: download Chrome's latest web driver: https://sites.google.com/a/chromium.org/chromedriver/downloads
## step 5: start docker, open, and scroll down web page, then get title of webpage title to verify its correct:

library(RSelenium)

setwd("/Users/StephanieLangeland") ## step 6: this folder contains the chrone web driver

system('docker run -d -p 4445:4444 selenium/standalone-chrome') ## step 7

remDr <- remoteDriver(remoteServerAddr = "localhost", ## step 8: establish server connection
                      port = 4445L, 
                      browserName = "chrome")

remDr$open() ## step 9: connect to  Selenium server web driver

remDr$navigate(final_url) ## step 10: navigate to desired webpage

remDr$getTitle() ## step 11: check title to verify that the correct webpage loaded

## step 12: scroll down to bottom of page x times with 3 seconds of loading time:
scroll_yf(60)

page_source <- remDr$getPageSource() ## step 13: get the page html

library(XML)

vix_data <- parse_yf(set_page_source = page_source)



## :::::::::::::::::: Part 3: Clean and save data set:

View(vix_data) 

str(vix_data)

vix_data <- clean_yf_data(final_df = vix_data,
              set_column_names = "vix",
              wd = "/Users/StephanieLangeland/Desktop/Columbia/Modern Data Structures/Langeland_Stephanie/final project",
              RDSfilename = "VIX")

View(vix_data)

str(vix_data)
