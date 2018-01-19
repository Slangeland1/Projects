#'@title  Create a Historical Quote Data Yahoo Finance URL
#'
#'@description  This function creates a Yahoo Finance URL to access historical 
#'quote data.  PLEASE NOTE THAT THIS FUNCTION WAS CREATED ON 2017-11-22.
#'THEREFORE, THIS FUNCTION MAY BECOME OBSOLETE IF YAHOO FINANCE CHANGES THE 
#'WEBSITE CONFIGURATION AFTER 2017-11-22.  
#'
#' @param start_date The start date of the data (format: "YYYY-MM-DD" must be 
#' in quotes).  There is no default, the user must set this parameter.
#' 
#' @param end_date The end date of the data (format: "YYYY-MM-DD" must be in 
#' quotes).  This parameter defaults to tomorrow's date in order to ensure 
#' that the most recent data are loaded.
#' 
#' @param ticker The ticker/symbol of the data (format: must be in quotes).  
#' There is no default, the user must set this parameter.
#' 
#' @keywords EconFiData
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' final_url <- get_yf_url(
#' start_date = "1995-01-13",
#' end_date = "2017-12-02",
#' ticker = "%5EVIX" ## ticker is the "^VIX" - the ^ symbol must be converted to "%5E"
#' )
#' }
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com
#' 
get_yf_url <- function(start_date,
                       end_date = (Sys.Date() + 1),
                       ticker 
) {
  
  start_date <- as.numeric(
    as.POSIXct(
      start_date
    )
  )
  
  end_date <- as.numeric(
    as.POSIXct(
      end_date
    )
  )
  
  ticker <- ticker
  
  url <- paste0(
    "https://finance.yahoo.com/quote/",
    ticker,
    "/history?period1=",
    start_date,
    "&period2=",
    end_date,
    "&interval=1d&filter=history&frequency=1d"
  )
  print(url)
}
