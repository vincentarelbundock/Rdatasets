.. container::

   .. container::

      ============== ===============
      nba_players_19 R Documentation
      ============== ===============

      .. rubric:: NBA Players for the 2018-2019 season
         :name: nba-players-for-the-2018-2019-season

      .. rubric:: Description
         :name: description

      Summary information from the NBA players for the 2018-2019 season.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nba_players_19

      .. rubric:: Format
         :name: format

      A data frame with 494 observations on the following 7 variables.

      first_name
         First name.

      last_name
         Last name.

      team
         Team name

      team_abbr
         3-letter team abbreviation.

      position
         Player position.

      number
         Jersey number.

      height
         Height, in inches.

      .. rubric:: Source
         :name: source

      https://www.nba.com/players

      .. rubric:: Examples
         :name: examples

      .. code:: R

         hist(nba_players_19$height, 20)
         table(nba_players_19$team)
