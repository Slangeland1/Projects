#'@title  Parse Yahoo Finance Data
#'
#'@description  This function parses the data obtained from web scrapping 
#'historical quote Yahoo Finance data.  The output is saved in a data frame. 
#'Please follow the steps in the vignette to understand at what 
#'point to use this function.  PLEASE NOTE THAT THIS FUNCTION WAS 
#'CREATED ON 2017-11-22.  THEREFORE, THIS FUNCTION MAY BECOME
#'OBSOLETE IF YAHOO FINANCE CHANGES THE WEBSITE CONFIGURATION AFTER 
#'2017-11-22 AS THIS FUNCTION USES WEB SCRAPPING TECHNIQUES.  
#'
#' @param set_page_source The object name of the page source obtained
#' by using the RSelenium function "getPageSource()".  There is no
#' default for this parameter, the user must take the preceeding
#' steps outlined in the vignette to understand how to create this
#' object. 
#' 
#' @keywords EconFiData
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' parse_yf(set_page_source = page_source)
#' }
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com
#' 
parse_yf <- function(set_page_source) {
  page_source <- set_page_source[[1]]
  
  data_page <- read_html(page_source) 
  
  data_nodes <- html_nodes(data_page, 
                           "table")
  
  html_text(data_nodes) 
  
  data_table <- html_table(data_nodes)
  
  final_df <- as.data.frame(data_table) 
  
  final_df
}
