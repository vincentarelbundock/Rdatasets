.. container::

   .. container::

      ========== ===============
      nflwr_hist R Documentation
      ========== ===============

      .. rubric:: The Football Hall Of Fame Has A Receiver Problem
         :name: the-football-hall-of-fame-has-a-receiver-problem

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Football Hall Of Fame Has A
      Receiver Problem"
      https://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nflwr_hist

      .. rubric:: Format
         :name: format

      A data frame with 6496 rows representing National Football League
      wide receivers and 6 variables:

      pfr_player_id
         Player identification code at
         https://www.pro-football-reference.com/

      player_name
         The player's name

      career_try
         Career True Receiving Yards

      career_ranypa
         Adjusted Net Yards Per Attempt (relative to average) of
         player's career teams, weighted by TRY w/ each team

      career_wowy
         The amount by which ``career_ranypa`` exceeds what would be
         expected from his QBs' (age-adjusted) performance without the
         receiver

      bcs_rating
         The number of yards per game by which a player would outgain an
         average receiver on the same team, after adjusting for teammate
         quality and age

      .. rubric:: Source
         :name: source

      See
      https://fivethirtyeight.com/features/the-football-hall-of-fame-has-a-receiver-problem/
