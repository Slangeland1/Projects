#'@title  A Summary Statistics Function 
#'
#'@description  This function creates a data frame that lists the length of an object, how 
#' many observations are missing within that object, and the number of non-NA 
#' observations within that object. 
#' @param x Name of the input object, which defaults to TRUE.
#' @param y Name that you wish to assign to the data frame that will be created, 
#' which defaults to FALSE.
#' @keywords SLpackage
#' @export
#' @examples 
#' obs_less_na(iris$Sepal.Length)
#' obs_less_na(iris$Sepal.Length, "Sepal length data within the iris dataset.")
#' 
#' x <- c(1:100, NA, NA, NA)
#' obs_less_na(x)
#' obs_less_na(x, "This is an example table.")
#' 
#' @author Stephanie Langeland stephanie.langeland@gmail.com
obs_less_na <- function(x = TRUE, y = FALSE) {
  obs <- length(x)
  NAs <- sum(is.na(x))
  result <- obs - NAs
  output <- as.data.frame(matrix(
    c("Number_of_Observations",
      "Number_of_NAs",
      "Observations_Less_NAs",
      obs,
      NAs,
      result),
    byrow = FALSE,
    ncol = 2,
    nrow = 3
  ))
  colnames(output)[1] <- "Type"
  colnames(output)[2] <- "Count"
  
  name <- print(y)
  
  name
  output
} 

