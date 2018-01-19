---
title: "Vignette: `get_historical_dates` Function"
author: "Stephanie Langeland"
date: "2017-12-11"
output: 
  html_document:
      keep_md: true
vignette: >
  %\VignetteIndexEntry{get_historical_dates Vignette}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

__Package:__ `EconFiData`

__Purpose:__ Obtain Historical FOMC Meeting Dates

__Description:__ This function creates a data frame that lists the FOMC meeting
dates that are listed in the "FOMC historical section" of the Federal Reserve's
("FED") website.  At the time this function was created, FOMC meeting dates from
1936 - 2011 were available using the link embedded in this function. PLEASE NOTE
THAT THIS FUNCTION WAS CREATED ON 2017-11-22.  THEREFORE, THIS FUNCTION MAY BECOME
OBSOLETE IF THE FED CHANGES THE WEBSITE CONFIGURATION AFTER 2017-11-22 AS THIS FUNCTION
USES WEB SCRAPPING TECHNIQUES. 

__Note:__  Ignore the "## No encoding supplied: defaulting to UTF-8." warning.

Load necessary packages: 


```r
library(httr)
library(rvest)
library(EconFiData)
```

Example 1: Use this function to obtain one year of data:


```r
get_historical_dates("1937") 
```

```
## No encoding supplied: defaulting to UTF-8.
```

```
##                           historical_text
## 1               January 26 Meeting - 1937
## 2                 March 15 Meeting - 1937
## 3                April 3-4 Meeting - 1937
## 4                  May 4-5 Meeting - 1937
## 5                   June 9 Meeting - 1937
## 6          September 11-12 Meeting - 1937
## 7 November 29 - December 1 Meeting - 1937
```

Example 2: Using this function in a `for loop` to obtain multiple years of data 
and store it in a data frame:


```r
meeting_dates  <- NULL ## step 1: create empty data frame to store dates

for (i in seq(1995, 2011)) { ## step 2: get all meeting dates from 1995-2011
  tmp <- get_historical_dates(i) ## create temporary file
  meeting_dates <- rbind(meeting_dates, tmp) ## create a data frame named "meeting_dates"
} 
```

```
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
## No encoding supplied: defaulting to UTF-8.
```

```r
head(meeting_dates) ## step 3: View the "meeting_dates" data frame 
```

```
##                        historical_text
## 1    January 13 Conference Call - 1995
## 2 January 31-February 1 Meeting - 1995
## 3      March 10 Conference Call - 1995
## 4              March 28 Meeting - 1995
## 5      April 28 Conference Call - 1995
## 6                May 23 Meeting - 1995
```

```r
str(meeting_dates)
```

```
## 'data.frame':	167 obs. of  1 variable:
##  $ historical_text: Factor w/ 167 levels "April 28 Conference Call - 1995",..: 4 5 7 8 1 9 6 2 11 10 ...
```
