============== ===============
AwardsManagers R Documentation
============== ===============

AwardsManagers table
--------------------

Description
~~~~~~~~~~~

Award information for managers awards

Usage
~~~~~

.. code:: R

   data(AwardsManagers)

Format
~~~~~~

A data frame with 232 observations on the following 6 variables.

``playerID``
   Manager (player) ID code

``awardID``
   Name of award won

``yearID``
   Year

``lgID``
   League; a factor with levels ``AL`` ``NL``

``tie``
   Award was a tie (Y or N)

``notes``
   Notes about the award

Source
~~~~~~

Lahman, S. (2026) Lahman's Baseball Database, 1871-2025, 2026 version,
https://sabr.org/lahman-database/

Examples
~~~~~~~~

.. code:: R

   # Post-season managerial awards

   # Number of recipients of each award by year
   with(AwardsManagers, table(yearID, awardID))

   # 1996 award winners
   subset(AwardsManagers, yearID == 1996)

   # AL winners of the BBWAA managerial award
   subset(AwardsManagers, awardID == "BBWAA Manager of the year" &
                             lgID == "AL")

   # Tony LaRussa's manager of the year awards
   subset(AwardsManagers, playerID == "larusto01")
