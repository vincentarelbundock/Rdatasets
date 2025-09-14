.. container::

   .. container::

      ====== ===============
      People R Documentation
      ====== ===============

      .. rubric:: People table
         :name: people-table

      .. rubric:: Description
         :name: description

      People table - Player names, DOB, and biographical info. This file
      is to be used to get details about players listed in the
      ``Batting``, ``Pitching``, and other files where players are
      identified only by ``playerID``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         data(People)

      .. rubric:: Format
         :name: format

      A data frame with 21271 observations on the following 26
      variables.

      ``playerID``
         A unique code assigned to each player. The ``playerID`` links
         the data in this file with records on players in the other
         files.

      ``birthYear``
         Year player was born

      ``birthMonth``
         Month player was born

      ``birthDay``
         Day player was born

      ``birthCountry``
         Country where player was born

      ``birthState``
         State where player was born

      ``birthCity``
         City where player was born

      ``deathYear``
         Year player died

      ``deathMonth``
         Month player died

      ``deathDay``
         Day player died

      ``deathCountry``
         Country where player died

      ``deathState``
         State where player died

      ``deathCity``
         City where player died

      ``nameFirst``
         Player's first name

      ``nameLast``
         Player's last name

      ``nameGiven``
         Player's given name (typically first and middle)

      ``weight``
         Player's weight in pounds

      ``height``
         Player's height in inches

      ``bats``
         a factor: Player's batting hand (left (L), right (R), or both
         (B))

      ``throws``
         a factor: Player's throwing hand (left(L) or right(R))

      ``debut``
         Date that player made first major league appearance

      ``finalGame``
         Date that player made first major league appearance (blank if
         still active)

      ``retroID``
         ID used by retrosheet, https://www.retrosheet.org/

      ``bbrefID``
         ID used by Baseball Reference website,
         https://www.baseball-reference.com/

      ``birthDate``
         Player's birthdate, in ``as.Date`` format

      ``deathDate``
         Player's deathdate, in ``as.Date`` format

      .. rubric:: Details
         :name: details

      ``debut``, ``finalGame`` were converted from character strings
      with ``as.Date``.

      .. rubric:: Source
         :name: source

      Lahman, S. (2025) Lahman's Baseball Database, 1871-2024, 2025
      version, https://sabr.org/lahman-database/

      .. rubric:: Examples
         :name: examples

      .. code:: R

         data(People); data(Batting)

         ## add player's name to Batting data
         People$name <- paste(People$nameFirst, People$nameLast, sep=" ")
         batting <- merge(Batting, 
                          People[,c("playerID","name")], 
                          by="playerID", all.x=TRUE)

         ## batting and throwing
         # right-handed batters are much less ambidexterous in throwing than left-handed batters
         # (should only include batters)

         BT <- with(People, table(bats, throws))
         require(vcd)
         structable(BT)
         mosaic(BT, shade=TRUE)

         ## Who is Shoeless Joe Jackson?
         subset(People, nameLast=="Jackson" & nameFirst=="Joe")
         subset(People, nameLast=="Jackson" & nameFirst=="Shoeless Joe")

         joeID <-c(subset(People, nameLast=="Jackson" & nameFirst=="Shoeless Joe")["playerID"])

         subset(Batting, playerID==joeID)
         subset(Fielding, playerID==joeID)
