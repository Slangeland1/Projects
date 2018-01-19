#'@title meeting_dates.rda
#'
#'@description The documentation for the get_historical_dates function includes
#'example #2 which collects FOMC meeting dates from 1995 - 2011.  This is the
#'data frame that was created. 
#'
#'@format meeting_dates is a data frame with 167 observations (rows) and 1 variable (column) 
#'named historical_text.  These data were scraped from the FED's website.
#'
#'@usage{meeting_dates}
#'
#'@source The data from the following websites were scrapped on 2017-11-22:
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical1995.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical1996.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical1997.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical1998.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical1999.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2000.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2001.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2002.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2003.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2004.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2005.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2006.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2007.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2008.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2009.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2010.htm"
#'"https://www.federalreserve.gov/monetarypolicy/fomchistorical2011.htm"
"meeting_dates"

#'@title Federal_Funds_Target_Rate.rda
#'
#'@description The documentation for the get_series_obs function includes
#'an example that obtains daily Federal Funds Target Rate data from 
#'1995-01-01 to 2008-12-15 using a FRED API key (details: 
#'https://research.stlouisfed.org/docs/api/api_key.html).  This is the data 
#'frame that was created. 
#'
#'@format Federal_Funds_Target_Rate is a list of 13.  Access the data in the list using 
#'as.data.frame(Federal_Funds_Target_Rate$observations), which has 5,098 observations (rows)
#'and 4 variables: "realtime_start" and "realtime_end" which is the date the API call was made; 
#'"date" which is the date of each observations; and "value" which is the Federal Funds Target Rate.
#'
#'@usage{Federal_Funds_Target_Rate}
#'
#'@source https://fred.stlouisfed.org/series/DFEDTAR
"Federal_Funds_Target_Rate"

#'@title vix_data.rda
#'
#'@description The documentation for the clean_yf_data function includes
#'an example that produces clean historical VIX data.  This is the data 
#'frame that was created. 
#'
#'@format vix_data is a data frame with 5,763 VIX observations (rows) and 6
#'variables (columns).  The variables are "vix_open": daily open value;
#'"vix_high": highest daily value; "vix_low": lowest daily value; 
#'"vix_close": daily close value; "vix_adjclose": daily adjusted close value.
#'
#'@usage{vix_data.}
#'
#'@source https://finance.yahoo.com/quote/%5EVIX/history?period1=789973200&period2=1512190800&interval=1d&filter=history&frequency=1d
"vix_data"
