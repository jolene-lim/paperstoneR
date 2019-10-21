library(paperstone)
context("Check for Valid Output")
set.seed(34115)

test_that("conversion is accurate", {
  expect_equal(sps_pair(1), "Scissors")
  expect_equal(sps_pair("Paper"), 3)
  expect_equal(sps_pair("hi"), 4)
})

test_that("results of match is accurate", {
  expect_equal(paperstone("paper", 20), game)
})

test_that("win_stats is accurate", {
  expect_equal(win_stats(game), 0.5)
  expect_equal(win_stats(game, outcome = "Lose"), 0.2)
  expect_equal(win_stats(game, outcome = "Tie"), 0.3)
})
