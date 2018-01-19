---
title: "Vignette: `get_series_obs` Function"
author: "Stephanie Langeland"
date: "2017-12-11"
output: 
  html_document:
      keep_md: true
vignette: >
  %\VignetteIndexEntry{get_series_obs Vignette}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

__Package:__ `EconFiData`

__Purpose:__ Obtain Data Using a FRED API Call

__Description:__ This function uses a FRED API key to obtain economic and financial
data from https://research.stlouisfed.org/docs/api/fred/series_observations.html.
There are other packages that have functions that can also obtain these data.
This function was included in this package for completeness purposes so 
another user can re-perform this project.  

Load necessary packages:


```r
library(httr)
library(jsonlite)
library(EconFiData)
```

Example 1:

  * `DFEDTAR` is the ID number for the Federal Funds Target Rate (details: https://fred.stlouisfed.org/series/DFEDTAR)
  
  * My FRED API key is saved in my `Renviron` file "FRED_API".  Users can sign
  up for a FRED API key here: https://research.stlouisfed.org/docs/api/api_key.html
  
  * More information about the frequencies available are here:
  https://research.stlouisfed.org/docs/api/fred/series_observations.html#frequency

Obtain data:


```r
setwd("/Users/StephanieLangeland/Desktop/")

target_data <- get_series_obs(series_id = "DFEDTAR", 
                              observation_start = "1995-01-01",
                              observation_end = "2008-12-15", 
                              user_api = Sys.getenv("FRED_API"), 
                              frequency = "d", 
                              name_rds = "Federal_Funds_Target_Rate.rds"
                              )
```

Clean data:


```r
head(target_data)
```

```
## $realtime_start
## [1] "2017-12-13"
## 
## $realtime_end
## [1] "2017-12-13"
## 
## $observation_start
## [1] "1995-01-01"
## 
## $observation_end
## [1] "2008-12-15"
## 
## $units
## [1] "lin"
## 
## $output_type
## [1] 1
```

```r
str(target_data)
```

```
## List of 13
##  $ realtime_start   : chr "2017-12-13"
##  $ realtime_end     : chr "2017-12-13"
##  $ observation_start: chr "1995-01-01"
##  $ observation_end  : chr "2008-12-15"
##  $ units            : chr "lin"
##  $ output_type      : int 1
##  $ file_type        : chr "json"
##  $ order_by         : chr "observation_date"
##  $ sort_order       : chr "asc"
##  $ count            : int 5098
##  $ offset           : int 0
##  $ limit            : int 100000
##  $ observations     :'data.frame':	5098 obs. of  4 variables:
##   ..$ realtime_start: chr [1:5098] "2017-12-13" "2017-12-13" "2017-12-13" "2017-12-13" ...
##   ..$ realtime_end  : chr [1:5098] "2017-12-13" "2017-12-13" "2017-12-13" "2017-12-13" ...
##   ..$ date          : chr [1:5098] "1995-01-01" "1995-01-02" "1995-01-03" "1995-01-04" ...
##   ..$ value         : chr [1:5098] "5.5" "5.5" "5.5" "5.5" ...
```

```r
target_data_df <- as.data.frame(target_data$observations)

View(target_data_df)

colnames(target_data_df)[4] <- "Federal_Funds_Target_Rate"

target_data_df <- target_data_df[ c("date",
                                    "Federal_Funds_Target_Rate")]

head(target_data_df)
```

```
##         date Federal_Funds_Target_Rate
## 1 1995-01-01                       5.5
## 2 1995-01-02                       5.5
## 3 1995-01-03                       5.5
## 4 1995-01-04                       5.5
## 5 1995-01-05                       5.5
## 6 1995-01-06                       5.5
```

