============ ===============
ManagersHalf R Documentation
============ ===============

ManagersHalf table
------------------

Description
~~~~~~~~~~~

Split season data for managers

Usage
~~~~~

.. code:: R

   data(ManagersHalf)

Format
~~~~~~

A data frame with 93 observations on the following 10 variables.

``playerID``
   Manager (player) ID code

``yearID``
   Year

``teamID``
   Team; a factor

``lgID``
   League; a factor with levels ``AL`` ``NL``

``inseason``
   Managerial order. One if the individual managed the team the entire
   year. Otherwise denotes where the manager appeared in the managerial
   order (1 for first manager, 2 for second, etc.). A factor with levels
   ``1`` ``2`` ``3`` ``4`` ``5``

``half``
   First or second half of season

``G``
   Games managed

``W``
   Wins

``L``
   Losses

``rank``
   Team's position in standings for the half

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   library("dplyr")
   library("reshape2")

   # Only have data for 1892 and 1981

   # League rank by half for 1981 teams with the same
   # manager in both halves who were hired in-season
   ManagersHalf %>% 
     filter(yearID >= 1901) %>%
     group_by(teamID, yearID) %>%
     filter(all(playerID == playerID[1])) %>%  # same manager in both halves
     mutate(winPct = round(W/G, 3)) %>%
     reshape2::dcast(playerID + yearID + teamID + lgID ~ half,
                        value.var = "rank") %>%
     rename(rank1 = `1`, rank2 = `2`) 
