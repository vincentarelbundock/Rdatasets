=================== ===============
AwardsShareManagers R Documentation
=================== ===============

AwardsShareManagers table
-------------------------

Description
~~~~~~~~~~~

Award voting for managers awards

Usage
~~~~~

.. code:: R

   data(AwardsShareManagers)

Format
~~~~~~

A data frame with 539 observations on the following 7 variables.

``awardID``
   name of award votes were received for

``yearID``
   Year

``lgID``
   League; a factor with levels ``AL`` ``NL``

``playerID``
   Manager (player) ID code

``pointsWon``
   Number of points received

``pointsMax``
   Maximum number of points possible

``votesFirst``
   Number of first place votes

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   # Voting for the BBWAA Manager of the Year award by year and league

   require("dplyr")

   # Sort in decreasing order of points by year and league
   AwardsShareManagers %>%
      group_by(yearID, lgID) %>%
      arrange(desc(pointsWon))

   # Any unanimous winners?
   AwardsShareManagers %>%
     filter(pointsWon == pointsMax)

   # Manager with highest proportion of possible points
   AwardsShareManagers %>%
      mutate(propWon = pointsWon/pointsMax) %>%
      arrange(desc(propWon)) %>%
      head(., 1)

   # Bobby Cox's MOY vote tallies
   AwardsShareManagers %>%
     filter(playerID == "coxbo01")
