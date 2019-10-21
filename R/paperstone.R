#' Play Scissors-Paper-Stone obsessively!
#'
#' @description
#' Play Scissors-Paper-Stone against R multiple times. Each time, R will randomly choose a move.
#'
#' @param x Either "Scissors" (or 1), "Stone" (or 2), or "Paper" (or 3)
#' @param rounds Number of rounds, default = 3
#' @return A dataframe containing the following columns for each iteration:
#' \describe{
#'   \item{Round}{Round number}
#'   \item{Player}{Player's Throw}
#'   \item{R}{R's Throw}
#'   \item{Result}{Result for Player either "Win", "Tie" or "Lose"}
#' }
#' @importFrom stringr str_to_title
#' @importFrom stats runif
#' @export
#' @examples
#' paperstone("stone")
#' paperstone(3)
#' paperstone("paper", 10)

paperstone <- function(x, rounds = 3) {
  rounds <- as.integer(rounds)

  if (x < 4) {x <- sps_pair(x)}
  if (is.character(x)) {x <- stringr::str_to_title(x)}
  user <- sps_pair(x)

  if (is.na(rounds)) {"Please enter an integer value for number of attempts!"}
  if (user == 4) {
    return("Please enter 'scissors'(1), 'stone'(2) or 'paper'(3)!")
  }

  df <- data.frame(Round = numeric(), Player = character(), R = character(), Result = character(),
                  stringsAsFactors = FALSE)

  for (i in 1:rounds) {
    sys <- round(stats::runif(1, 0.6, 3.5), 0)

    if (user == 1 & sys == 3) {
      result <- "Win"
    } else if (user == 3 & sys == 1) {
      result <- "Lose"
    } else if (user > sys) {
      result <- "Win"
    } else if (user == sys) {
      result <- "Tie"
    } else if (user < sys) {
      result <- "Lose"
    }
    df[i, ] <- c(i, x, sps_pair(sys), result)
  }
  return(df)
}
