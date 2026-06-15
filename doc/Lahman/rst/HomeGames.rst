========= ===============
HomeGames R Documentation
========= ===============

HomeGames table
---------------

Description
~~~~~~~~~~~

Data mapping teams to the stadiums they played regular season games in
as the home team.

Usage
~~~~~

.. code:: R

   data(HomeGames)

Format
~~~~~~

A data frame with 3303 observations on the following 9 variables.

``year.key``
   Year

``league.key``
   League; a factor with levels ``AA`` ``AL`` ``FL`` ``NL`` ``PL``
   ``UA``

``team.key``
   Team; a factor

``park.key``
   Unique identifier for each ballpark

``span.first``
   First date the park began acting as home field for the team

``span.last``
   Last date the park began acting as home field for the team

``games``
   Total games in this time span

``openings``
   Total opening in this time span

``attendance``
   Total attendance in this time span

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   data(HomeGames)
   library(dplyr)

   # How many parks has every team played in as the home team for even a single game?
   HomeGames %>%
     count(team.key) %>%
     arrange(team.key)

   # What parks have the Toronto Blue Jays played in as the home team?
   HomeGames %>%
     filter(team.key == "TOR") %>%
     arrange(span.last)
     
   # What parks have the Boston Red Sox played in as the home team?
   HomeGames %>%
     filter(team.key == "BOS") %>%
     arrange(span.last)
     
   # What is the Toronto Blue Jays annual total home attendance by year?
   HomeGames %>%
     filter(team.key == "TOR") %>%
     group_by(year.key) %>%
     summarize(total.attendance = sum(attendance)) %>%
     arrange(year.key)
