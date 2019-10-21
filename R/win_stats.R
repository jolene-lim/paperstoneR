#' Calculate your results from your Scissors-Paper-Stone game!
#'
#' @description
#' Calculates the proportion of a certain outcome for a game of Scissors-Paper-Stone!
#'
#' @param game Dataframe containing output of paperstone()
#' @param outcome Outcome type to be counted, default = "Win"
#' @return The proportion of that outcome in the game.
#' @export
#' @examples
#' win_stats(game)
#' win_stats(game, "Tie")

win_stats <- function(game, outcome = "Win") {
  subset <- game[game$Result == outcome, ]
  output <- nrow(subset) / nrow(game)
  return(output)
}
