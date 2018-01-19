#'@title  Obtain Data Using a FRED API Call
#'
#'@description  This function uses a FRED API key to obtain economic and financial
#'data from https://research.stlouisfed.org/docs/api/fred/series_observations.html.
#'There are other packages that have functions that can also obtain these data.
#'This function was included in this package for completeness purposes so 
#'another user can re-perform this project.  
#'
#' @param series_id The series ID number assigned to data by FRED (format: the ID 
#' must be in quotes).  Obtain the ID number of a data point from FRED.  There is 
#' no default, the user must set this parameter.
#' 
#' @param observation_start The start date of the data (format: "YYYY-MM-DD" must 
#' be in quotes).  This defaults to "1947-01-01".
#' 
#' @param observation_end The end date of the data (format: "YYYY-MM-DD" must be 
#' in quotes).  This defaults to "2017-11-06".
#' 
#' @param user_api The user's FRED API key (format: must be in quotes).  There 
#' is no default, the user must set this parameter.
#' 
#' @param frequency The frequency of the data e.g, "a" for annual, "sa" for 
#' semi-annual, etc. (format: must be in quotes).  This defaults to "sa" (semi-annual).
#' 
#' @param name_rds The output from this function will be saved in an RDS file.  
#' This parameter is the name of the RDS file (format: must be in quotes).  
#' This defaults to "api_client_output.RDS".
#' 
#' @keywords EconFiData
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' get_series_obs(series_id = "DFEDTAR", ## ID number for the Federal Funds Target Rate 
#' (details: https://fred.stlouisfed.org/series/DFEDTAR)
#' observation_start = "1995-01-01", ## start date
#' observation_end = "2008-12-15", ## end date
#' user_api = "INSERT API KEY HERE", ## insert the user's API key 
#' (details: https://research.stlouisfed.org/docs/api/api_key.html)
#' frequency = "d", ## daily frequency 
#' name_rds = "Federal_Funds_Target_Rate.rds" ## name of output file
#' )
#' }
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com
#' 
get_series_obs <- function(series_id, 
                           observation_start = "1947-01-01", 
                           observation_end = "2017-11-06",  
                           user_api, 
                           frequency = "sa",
                           name_rds = "api_client_output.RDS"
) {
  start_url <- "https://api.stlouisfed.org/fred/series/observations?"
  
  response <- GET(
    start_url,
    query = list(
      
      "series_id" = series_id,
      
      "observation_start" = observation_start,
      
      "observation_end" = observation_end,
      
      "api_key" = user_api,
      
      "frequency" = frequency,
      
      "file_type" = "json"
    )
  )
  
  output <- if(http_error(response) == TRUE){
    http_error(response)
  } else {
    content(response,
            as = "text")
  }
  
  dataset <- jsonlite::fromJSON(output, 
                                simplifyDataFrame = TRUE)
  
  save_rds <- saveRDS(dataset,
                      file = name_rds)
  
  dataset
}