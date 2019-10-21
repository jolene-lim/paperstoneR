#' Returns the paired value/number for Scissors-Paper-Stone.
#'
#' @description
#' When the input is the integer code, the output is the corresponding throw in words.
#' When the input is the throw name, the output is the corresponding integer code.
#' The pairs are "Scissors = 1", "Stone = 2", "Paper = 3"
#'
#' @param x A throw
#' @return The corresponding throw name/integer code
#' @export
#' @examples
#' sps_pair(1)
#' sps_pair("stone")

sps_pair <- function(x) {
  if (is.character(x)) {x <- stringr::str_to_title(x)}
  if (x == "Scissors") {
    return(1)
  } else if (x == "Stone") {
    return(2)
  } else if (x == "Paper") {
    return(3)
  } else if (x == 1) {
    return("Scissors")
  } else if (x == 2) {
    return("Stone")
  } else if (x == 3) {
    return("Paper")
  } else {
    return(4)
  }
}
