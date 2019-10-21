
<!-- README.md is generated from README.Rmd. Please edit that file -->
paperstone
==========

<!-- badges: start -->
<!-- badges: end -->
The goal of paperstone is to let R users pit their wits against R in an epic battle of Scissors-Paper-Stone.
(Also, as Players are only allowed to throw the same move, this game implicitly demonstrates the Law of Large Numbers when many iterations are used.)

Data
----

There is one dataframe included in the package, called `game`. This is a sample output of a player throwing "paper" 20 times. The code to generate this is shown below:

``` r
set.seed(34115)
game <- paperstone("paper", 20)
```

Functions
---------

### `paperstone()`

In order to play the game, users need to call the `paperstone()` function. Players are allowed to either call the move or its corresponding code:

| Move     | Code |
|----------|------|
| Scissors | 1    |
| Stone    | 2    |
| Paper    | 3    |

#### `sps_pair()`

The `sps_pair()` function is an intermediate function used to convert moves to codes and vice-versa. For all non-valid inputs, the function returns `4`. When this is passed to `paperstone()`, the function to throw an error telling users to input a valid move/code.

### `win_stats()`

Player can calculate their game statistics using the `win_stats()` function, which will return the proportion of a certain result in the game (note: this must be an output from `paperstone` or a dataframe in the with the same number of columns and column names). For example:

``` r
win_stats(game) # by default, the outcome requested is 'Win'
win_stats(game, "Lose")
```
