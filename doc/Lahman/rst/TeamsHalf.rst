========= ===============
TeamsHalf R Documentation
========= ===============

TeamsHalf table
---------------

Description
~~~~~~~~~~~

Split season data for teams

Usage
~~~~~

.. code:: R

   data(TeamsHalf)

Format
~~~~~~

A data frame with 142 observations on the following 10 variables.

``yearID``
   Year

``lgID``
   League; a factor with levels ``AL`` ``NL``

``teamID``
   Team; a factor

``Half``
   First or second half of season

``divID``
   Division

``DivWin``
   Won Division (Y or N)

``Rank``
   Team's position in standings for the half

``G``
   Games played

``W``
   Wins

``L``
   Losses

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   # 1981 season team data split into half seasons
   data(TeamsHalf)
   library("dplyr")

   # List standings with winning percentages by
   # season half, league and division
   TeamsHalf %>%
      group_by(Half, lgID, divID) %>%
      mutate(WinPct = round(W/G, 3)) %>%
      arrange(Half, lgID, divID, Rank) %>%
      select(Half, lgID, divID, Rank, teamID, WinPct)
