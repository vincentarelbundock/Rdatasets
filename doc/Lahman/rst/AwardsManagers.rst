.. container::

   .. container::

      ============== ===============
      AwardsManagers R Documentation
      ============== ===============

      .. rubric:: AwardsManagers table
         :name: awardsmanagers-table

      .. rubric:: Description
         :name: description

      Award information for managers awards

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AwardsManagers)

      .. rubric:: Format
         :name: format

      A data frame with 193 observations on the following 6 variables.

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

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2024
      version, http://www.seanlahman.com/

      .. rubric:: Examples
         :name: examples

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
