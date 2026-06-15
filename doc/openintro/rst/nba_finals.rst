========== ===============
nba_finals R Documentation
========== ===============

NBA Finals History
------------------

Description
~~~~~~~~~~~

This dataset contains information about the teams who played in the NBA
Finals from 1950 - 2022.

Usage
~~~~~

.. code:: R

   nba_finals

Format
~~~~~~

A data frame with 73 rows and 9 variables:

year
   The year in which the Finals took place.

winner
   The team who won the series.

western_wins
   Number of series wins by the Western Conference Champions.

eastern_wins
   Number of series wins by the Eastern Conference Champions.

western_champions
   Team that won the Western Conference title and played in the Finals.

eastern_champions
   Team that won the Eastern Conference title and played in the Finals.

western_coach
   Coach of the Western Conference champions.

eastern_coach
   Coach of the Eastern Conference champions.

home_court
   Which conference held home court advantage for the series.

Source
~~~~~~

`Wikipedia: List of NBA
Champions <https://en.wikipedia.org/wiki/List_of_NBA_champions>`__

Examples
~~~~~~~~

.. code:: R

   library(dplyr)
   library(ggplot2)
   library(tidyr)

   # Top 5 Appearing Coaches
   nba_finals |>
     pivot_longer(
       cols = c("western_coach", "eastern_coach"),
       names_to = "conference", values_to = "coach"
     ) |>
     count(coach, sort = TRUE) |>
     slice_head(n = 5)

   # Top 5 Winning Coaches
   nba_finals |>
     mutate(
       winning_coach = case_when(
         western_wins == 4 ~ western_coach,
         eastern_wins == 4 ~ eastern_coach
       )
     ) |>
     count(winning_coach, sort = TRUE) |>
     slice_head(n = 5)
