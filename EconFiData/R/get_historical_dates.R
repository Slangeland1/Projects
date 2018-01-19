#'@title  Obtain Historical FOMC Meeting Dates
#'
#'@description  This function creates a data frame that lists the FOMC meeting
#'dates that are listed in the "FOMC historical section" of the Federal Reserve's
#'("FED") website.  At the time this function was created, FOMC meeting dates from
#'1936 - 2011 were available using the link embedded in this function. PLEASE NOTE
#'THAT THIS FUNCTION WAS CREATED ON 2017-11-22.  THEREFORE, THIS FUNCTION MAY BECOME
#'OBSOLETE IF THE FED CHANGES THE WEBSITE CONFIGURATION AFTER 2017-11-22 AS THIS FUNCTION
#'USES WEB SCRAPPING TECHNIQUES. 
#'
#' @param x The year ("YYYY" format with quotes) for which the user wants to obtain 
#' FOMC meeting dates.  This defaults to TRUE.
#' 
#' @keywords EconFiData
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' ## Example 1: Use this function to obtain one year of data:
#' get_historical_dates("1937") 
#' 
#' ## Example 2: Using this function in a for loop to obtain multiple
#' ## years of data and store it in a data frame:
#' 
#' meeting_dates  <- NULL ## step 1: create empty data frame to store dates
#' 
#' for (i in seq(1995, 2011)) { ## step 2: get all meeting dates from 1995-2011
#' tmp <- get_historical_dates(i) ## create temporary file
#' meeting_dates <- rbind(meeting_dates, tmp) ## create a data frame named "meeting_dates"
#' } 
#'  
#' View(meeting_dates) ## step 3: View the "meeting_dates" data frame 
#' }
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com
#' 
get_historical_dates <- function(x = TRUE) {
  year <- x
  
  historical_url <- paste0(
    "https://www.federalreserve.gov/monetarypolicy/fomchistorical",
    year,
    ".htm"
  )
  
  historical_import <- GET(historical_url)
  
  historical_content <- content(historical_import,
                                as = "parsed")
  
  historical_page <- read_html(
    historical_url
  )
  
  historical_nodes <- html_nodes(
    historical_page,
    "h5"
  )
  
  historical_text <- html_text(historical_nodes)
  
  historical_text_table <- as.data.frame(historical_text)
  
  historical_text_table
}

