---
title: "Vignette: `get_yf_url`, `scroll_yf`, `parse_yf`, and `clean_yf_data` Functions"
author: "Stephanie Langeland"
date: "2017-12-11"
output: 
  html_document:
      keep_md: true
vignette: >
  %\VignetteIndexEntry{all_yf_functions Vignette}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

__Package:__ `EconFiData`

__Purpose:__ To demonstrate how the `get_yf_url`, `scroll_yf`, `parse_yf`, and
`clean_yf_data` functions work together to obtain clean Yahoo Finance Data.

__Disclaimer:__ PLEASE NOTE THAT THIS FUNCTION WAS CREATED ON 2017-11-22.  
THEREFORE, THIS FUNCTION MAY BECOME OBSOLETE IF YAHOO FINANCE CHANGES THE 
WEBSITE CONFIGURATION AFTER  2017-11-22 AS THIS FUNCTION USES WEB SCRAPPING 
TECHNIQUES.

__`get_yf_url` Description:__  This function creates a Yahoo Finance URL to access 
historical quote data.

__`scroll_yf` Description:__  This function scrolls down a yahoo finance 
historical quote data page in order to load the data since Yahoo Finance 
only loads the data that is seen by the user on the screen i.e. the user 
must scroll down to view all data because more data loads as the user 
scrolls down.  

__`parse_yf` Description:__  This function parses the data obtained from web 
scrapping historical quote Yahoo Finance data.  The output is saved in a data 
frame. 

__`clean_yf_data` Description:__  This function cleans the historical Yahoo 
Finance quote data that was parsed using "parse_yf()".  The output is saved 
as a data frame and RDS file.

__Note:__ The following was run using Google Chrome on a MacBook Pro.


```r
## :::::::::::::::::: Part 1: Create the Yahoo Finance URL:

library(rvest)
library(EconFiData)

final_url <- get_yf_url(start_date = "2017-01-01",
                        end_date = "2017-12-02",
                        ticker = "%5EVIX")
```

```
## [1] "https://finance.yahoo.com/quote/%5EVIX/history?period1=1483246800&period2=1512190800&interval=1d&filter=history&frequency=1d"
```

```r
## :::::::::::::::::: Part 2: Scrape Yahoo Finance Historical Data:

## step 1 (initial install): Install Docker: Run in Terminal: "brew cask install docker"
## step 2: open docker in apps
## step 3: start docker
## step 4: download Chrome's latest web driver: https://sites.google.com/a/chromium.org/chromedriver/downloads
## step 5: start docker app

library(RSelenium) 

setwd("/Users/StephanieLangeland") ## step 6: this folder contains the chrone web driver

system('docker run -d -p 4445:4444 selenium/standalone-chrome') ## step 7

remDr <- remoteDriver(remoteServerAddr = "localhost", ## step 8: establish server connection
                      port = 4445L, 
                      browserName = "chrome")

remDr$open() ## step 9: connect to  Selenium server web driver
```

```
## [1] "Connecting to remote server"
## $applicationCacheEnabled
## [1] FALSE
## 
## $rotatable
## [1] FALSE
## 
## $mobileEmulationEnabled
## [1] FALSE
## 
## $networkConnectionEnabled
## [1] FALSE
## 
## $chrome
## $chrome$chromedriverVersion
## [1] "2.33.506092 (733a02544d189eeb751fe0d7ddca79a0ee28cce4)"
## 
## $chrome$userDataDir
## [1] "/tmp/.org.chromium.Chromium.Nc7BLf"
## 
## 
## $takesHeapSnapshot
## [1] TRUE
## 
## $pageLoadStrategy
## [1] "normal"
## 
## $databaseEnabled
## [1] FALSE
## 
## $handlesAlerts
## [1] TRUE
## 
## $hasTouchScreen
## [1] FALSE
## 
## $version
## [1] "62.0.3202.94"
## 
## $platform
## [1] "Linux"
## 
## $browserConnectionEnabled
## [1] FALSE
## 
## $nativeEvents
## [1] TRUE
## 
## $acceptSslCerts
## [1] TRUE
## 
## $locationContextEnabled
## [1] TRUE
## 
## $webStorageEnabled
## [1] TRUE
## 
## $browserName
## [1] "chrome"
## 
## $takesScreenshot
## [1] TRUE
## 
## $javascriptEnabled
## [1] TRUE
## 
## $cssSelectorsEnabled
## [1] TRUE
## 
## $setWindowRect
## [1] TRUE
## 
## $unexpectedAlertBehaviour
## [1] ""
## 
## $id
## [1] "776eb50dce447df24afcdab8dd300315"
```

```r
remDr$navigate(final_url) ## step 10: navigate to desired webpage

remDr$getTitle() ## step 11: check title to verify that the correct webpage loaded
```

```
## [[1]]
## [1] "^VIX 9.89 -0.03 -0.30% : Vix - Yahoo Finance"
```

```r
## step 12: scroll down to bottom of page 5 times with 3 seconds of loading time:
scroll_yf(5)

page_source <- remDr$getPageSource() ## step 13: get the page html

library(XML)

vix_data <- parse_yf(set_page_source = page_source)



## :::::::::::::::::: Part 3: Clean and save data set:

head(vix_data) 
```

```
##   X1     X2         Date  Open  High   Low Close. Adj.Close.. Volume
## 1 NA Search Dec 01, 2017 11.19 14.58 10.54  11.43       11.43      -
## 2 NA Search Nov 30, 2017 10.49 12.05 10.25  11.28       11.28      -
## 3 NA Search Nov 29, 2017  9.91 10.93  9.81  10.70       10.70      -
## 4 NA Search Nov 28, 2017  9.72 10.31  9.53  10.03       10.03      -
## 5 NA Search Nov 27, 2017 10.07 10.26  9.79   9.87        9.87      -
## 6 NA Search Nov 24, 2017  9.82  9.96  8.56   9.67        9.67      -
```

```r
str(vix_data)
```

```
## 'data.frame':	233 obs. of  9 variables:
##  $ X1         : logi  NA NA NA NA NA NA ...
##  $ X2         : chr  "Search" "Search" "Search" "Search" ...
##  $ Date       : chr  "Dec 01, 2017" "Nov 30, 2017" "Nov 29, 2017" "Nov 28, 2017" ...
##  $ Open       : chr  "11.19" "10.49" "9.91" "9.72" ...
##  $ High       : chr  "14.58" "12.05" "10.93" "10.31" ...
##  $ Low        : chr  "10.54" "10.25" "9.81" "9.53" ...
##  $ Close.     : chr  "11.43" "11.28" "10.70" "10.03" ...
##  $ Adj.Close..: chr  "11.43" "11.28" "10.70" "10.03" ...
##  $ Volume     : chr  "-" "-" "-" "-" ...
```

```r
vix_data <- clean_yf_data(final_df = vix_data,
              set_column_names = "vix",
              wd = "/Users/StephanieLangeland/Desktop/",
              RDSfilename = "VIX")

head(vix_data)
```

```
##         Date vix_open vix_high vix_low vix_close vix_adjclose
## 1 2017-12-01    11.19    14.58   10.54     11.43        11.43
## 2 2017-11-30    10.49    12.05   10.25     11.28        11.28
## 3 2017-11-29     9.91    10.93    9.81     10.70        10.70
## 4 2017-11-28     9.72    10.31    9.53     10.03        10.03
## 5 2017-11-27    10.07    10.26    9.79      9.87         9.87
## 6 2017-11-24     9.82     9.96    8.56      9.67         9.67
```

```r
str(vix_data)
```

```
## 'data.frame':	232 obs. of  6 variables:
##  $ Date        : Date, format: "2017-12-01" "2017-11-30" ...
##  $ vix_open    : num  11.19 10.49 9.91 9.72 10.07 ...
##  $ vix_high    : num  14.6 12.1 10.9 10.3 10.3 ...
##  $ vix_low     : num  10.54 10.25 9.81 9.53 9.79 ...
##  $ vix_close   : num  11.43 11.28 10.7 10.03 9.87 ...
##  $ vix_adjclose: num  11.43 11.28 10.7 10.03 9.87 ...
```

