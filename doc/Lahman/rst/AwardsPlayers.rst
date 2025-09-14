.. container::

   .. container::

      ============= ===============
      AwardsPlayers R Documentation
      ============= ===============

      .. rubric:: AwardsPlayers table
         :name: awardsplayers-table

      .. rubric:: Description
         :name: description

      Award information for players awards

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AwardsPlayers)

      .. rubric:: Format
         :name: format

      A data frame with 12632 observations on the following 6 variables.

      ``playerID``
         Player ID code

      ``awardID``
         Name of award won

      ``yearID``
         Year

      ``lgID``
         League; a factor with levels ``AA`` ``AL`` ``ML`` ``NL``

      ``tie``
         Award was a tie (Y or N)

      ``notes``
         Notes about the award

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(AwardsPlayers)
         # Which awards have been given and how many?
         with(AwardsPlayers, table(awardID))
         awardtab <- with(AwardsPlayers, table(awardID))

         # Plot the awardtab table as a Cleveland dot plot
         library("lattice")
         dotplot(awardtab)

         # Restrict to MVP awards
         mvp <- subset(AwardsPlayers, awardID == "Most Valuable Player")
         # Who won in 1994?
         mvp[mvp$yearID == 1994L, ]

         goldglove <- subset(AwardsPlayers, awardID == "Gold Glove")
         # which players won most often?
         GGcount <- table(goldglove$playerID)
         GGcount[GGcount>10]

         # Triple Crown winners
         subset(AwardsPlayers, awardID == "Triple Crown")

         # Simultaneous Triple Crown and MVP winners
         # (compare merged file to TC)
         TC <- subset(AwardsPlayers, awardID == "Triple Crown")
         MVP <- subset(AwardsPlayers, awardID == "Most Valuable Player")
         keepvars <- c("playerID", "yearID", "lgID.x")
         merge(TC, MVP, by = c("playerID", "yearID"))[ ,keepvars]
