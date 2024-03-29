% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paperstone.R
\name{paperstone}
\alias{paperstone}
\title{Play Scissors-Paper-Stone obsessively!}
\usage{
paperstone(x, rounds = 3)
}
\arguments{
\item{x}{Either "Scissors" (or 1), "Stone" (or 2), or "Paper" (or 3)}

\item{rounds}{Number of rounds, default = 3}
}
\value{
A dataframe containing the following columns for each iteration:
\describe{
  \item{Round}{Round number}
  \item{Player}{Player's Throw}
  \item{R}{R's Throw}
  \item{Result}{Result for Player either "Win", "Tie" or "Lose"}
}
}
\description{
Play Scissors-Paper-Stone against R multiple times. Each time, R will randomly choose a move.
}
\examples{
paperstone("stone")
paperstone(3)
paperstone("paper", 10)
}
