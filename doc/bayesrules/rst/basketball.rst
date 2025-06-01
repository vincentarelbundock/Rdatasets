.. container::

   .. container::

      ========== ===============
      basketball R Documentation
      ========== ===============

      .. rubric:: WNBA Basketball Data
         :name: wnba-basketball-data

      .. rubric:: Description
         :name: description

      The WNBA Basketball Data was scraped from
      https://www.basketball-reference.com/wnba/players/ and contains
      information on basketball players from the 2019 season.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         basketball

      .. rubric:: Format
         :name: format

      A data frame with 146 rows and 30 variables. Each row represents a
      single WNBA basketball player. The variables on each player are as
      follows.

      player_name
         first and last name

      height
         height in inches

      weight
         weight in pounds

      year
         year of the WNBA season

      team
         team that the WNBA player is a member of

      age
         age in years

      games_played
         number of games played by the player in that season

      games_started
         number of games the player started in that season

      avg_minutes_played
         average number of minutes played per game

      avg_field_goals
         average number of field goals per game played

      avg_field_goal_attempts
         average number of field goals attempted per game played

      field_goal_pct
         percent of field goals made throughout the season

      avg_three_pointers
         average number of three pointers per game played

      avg_three_pointer_attempts
         average number of three pointers attempted per game played

      three_pointer_pct
         percent of three pointers made throughout the season

      avg_two_pointers
         average number of two pointers made per game played

      avg_two_pointer_attempts
         average number of two pointers attempted per game played

      two_pointer_pct
         percent of two pointers made throughout the season

      avg_free_throws
         average number of free throws made per game played

      avg_free_throw_attempts
         average number of free throws attempted per game played

      free_throw_pct
         percent of free throws made throughout the season

      avg_offensive_rb
         average number of offensive rebounds per game played

      avg_defensive_rb
         average number of defensive rebounds per game played

      avg_rb
         average number of rebounds (both offensive and defensive) per
         game played

      avg_assists
         average number of assists per game played

      avg_steals
         average number of steals per game played

      avg_blocks
         average number of blocks per game played

      avg_turnovers
         average number of turnovers per game played

      avg_personal_fouls
         average number of personal fouls per game played. Note: after 5
         fouls the player is not allowed to play in that game anymore

      avg_points
         average number of points made per game played

      total_minutes
         total number of minutes played throughout the season

      starter
         whether or not the player started in more than half of the
         games they played

      .. rubric:: Source
         :name: source

      https://www.basketball-reference.com/
