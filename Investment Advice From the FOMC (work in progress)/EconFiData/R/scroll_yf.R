#'@title  Scroll Down Historical Quote Data Yahoo Finance Page
#'
#'@description  This function scrolls down a yahoo finance historical quote
#'data page in order to load the data since Yahoo Finance only loads the
#'data that is seen by the user on the screen i.e. the user must scroll
#'down to view all data because more data loads as the user scrolls down.  
#'Please follow the steps in the vignette to understand at what 
#'point to use this function.  PLEASE NOTE THAT THIS FUNCTION WAS 
#'CREATED ON 2017-11-22.  THEREFORE, THIS FUNCTION MAY BECOME
#'OBSOLETE IF YAHOO FINANCE CHANGES THE WEBSITE CONFIGURATION AFTER 
#'2017-11-22 AS THIS FUNCTION USES WEB SCRAPPING TECHNIQUES.  
#'
#' @param x The number times the user will scroll down the page.
#' 
#' @keywords EconFiData
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' scroll_yf(60) ## scrolls down 60 times 
#' }
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com
#' 
scroll_yf <- function(x) {
  for(i in 1:x) {      
    remDr$executeScript(
      paste(
        "scroll(0,",
        i * 10000,
        ");"
      ),
      args = list("dummy")
    )
    Sys.sleep(3)
  }
}