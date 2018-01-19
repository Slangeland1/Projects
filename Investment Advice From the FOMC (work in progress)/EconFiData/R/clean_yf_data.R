#'@title  Clean Historical Yahoo Finance data
#'
#'@description  This function cleans the historical Yahoo Finance quote data
#'that was parsed using "parse_yf()".  The output is saved as a data frame 
#'and RDS file.
#'Please follow the steps in the vignette to understand at what 
#'point to use this function.  PLEASE NOTE THAT THIS FUNCTION WAS 
#'CREATED ON 2017-11-22.  THEREFORE, THIS FUNCTION MAY BECOME
#'OBSOLETE IF YAHOO FINANCE CHANGES THE WEBSITE CONFIGURATION AFTER 
#'2017-11-22 AS THE INPUTS USED IN THIS FUNCTION WERE CREATED 
#'BY FUNCTIONS THAT USE WEB SCRAPPING TECHNIQUES.  
#'
#' @param final_df The name of the object that was previously parsed. 
#' This will also be the name of the data frame to be created as output. 
#' 
#' @param set_column_names Each column heading prefix (format: must use 
#' quotes).  For example, if this is set to "vix", then the column 
#' headings of the data frame will be "vix_open", "vix_high", "vix_low", 
#' "vix_close", and "vix_adjclose".
#' 
#' @param wd The path to the working directory (format: must use quotes) 
#' where the output RDS file will be saved. 
#' 
#' @param RDSfilename The name (format: must use quotes) of the output RDS file. 
#' 
#' @keywords EconFiData
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' clean_yf_data(final_df = vix_data,
#' set_column_names = "vix",
#' wd = "/folder_name",
#' RDSfilename = "VIX"
#' )}
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com

clean_yf_data <- function(final_df, 
                          set_column_names, 
                          wd,
                          RDSfilename 
) {
  
  dimensions <- dim(final_df)
  
  last_row <- dimensions[1]
  
  last_col <- dimensions[2]
  
  final_df <- final_df[-last_row, -c(1:2, last_col)]
  
  final_df$Date <- as.Date(final_df$Date,
                           format = "%b %d, %Y") ## convert to date
  
  colnames(final_df) ## check column names
  
  colnames(final_df)[2] <- paste0(
    set_column_names, 
    "_", 
    "open")
  
  colnames(final_df)[3] <- paste0(
    set_column_names, 
    "_", 
    "high")
  
  colnames(final_df)[4] <- paste0(
    set_column_names, 
    "_", 
    "low")
  
  colnames(final_df)[5] <- paste0(
    set_column_names, 
    "_", 
    "close")
  
  colnames(final_df)[6] <- paste0(
    set_column_names, 
    "_", 
    "adjclose")
  
  final_df[ , 2] <- as.numeric(final_df[ , 2])
  
  final_df[ , 3] <- as.numeric(final_df[ , 3])
  
  final_df[ , 4] <- as.numeric(final_df[ , 4])
  
  final_df[ , 5] <- as.numeric(final_df[ , 5])
  
  final_df[ , 6] <- as.numeric(final_df[ , 6])
  
  setwd(wd)
  
  filename <- paste0(
    RDSfilename,
    ".rds")
  
  saveRDS(final_df,
          file = filename)
  
  final_df
}