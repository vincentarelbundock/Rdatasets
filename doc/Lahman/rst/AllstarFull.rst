.. container::

   .. container::

      =========== ===============
      AllstarFull R Documentation
      =========== ===============

      .. rubric:: AllstarFull table
         :name: allstarfull-table

      .. rubric:: Description
         :name: description

      All Star appearances by players

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(AllstarFull)

      .. rubric:: Format
         :name: format

      A data frame with 5673 observations on the following 8 variables.

      ``playerID``
         Player ID code

      ``yearID``
         Year

      ``gameNum``
         Game number (for years in which more than one game was played)

      ``gameID``
         Game ID code

      ``teamID``
         Team; a factor

      ``lgID``
         League; a factor with levels ``AL`` ``NL``

      ``GP``
         Game played (zero if player did not appear in game)

      ``startingPos``
         If the player started, what position he played

      .. rubric:: Source
         :name: source

      Lahman, S. (2024) Lahman's Baseball Database, 1871-2023, 2024
      version, http://www.seanlahman.com/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(AllstarFull)

         # find number of appearances by players in the All Star games
         player_appearances <- with(AllstarFull, rev(sort(table(playerID))))

         # How many All-Star players, in total?
         length(player_appearances)

         # density plot of the whole distribution
         plot(density(player_appearances), main="Player appearances in All Star Games")
         rug(jitter(player_appearances))

         # who has played in more than 10 ASGs?
         player_appearances[player_appearances > 10]
         hist(player_appearances[player_appearances > 10])


         # Hank Aaron's All-Star record:
         subset(AllstarFull, playerID == "aaronha01")

         # Years that Stan Musial played in the ASG:
         with(AllstarFull, yearID[playerID == "musiast01"])

         # Starting positions he played (NA means did not start)
         with(AllstarFull, startingPos[playerID == "musiast01"])

         # All-Star rosters from the 1966 ASG
         subset(AllstarFull, gameID == "NLS196607120")

         # All-Stars from the Washington Nationals
         subset(AllstarFull, teamID == "WAS")

         # Teams with the fewest All-Stars
         rare <- names(which(table(AllstarFull$teamID) < 10))

         # Records associated with the 'rare' teams:
         # (There are a few teamID typos: can you spot them?)
         subset(AllstarFull, teamID %in% rare)
