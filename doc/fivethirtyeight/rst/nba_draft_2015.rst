.. container::

   .. container::

      ============== ===============
      nba_draft_2015 R Documentation
      ============== ===============

      .. rubric:: Projecting The Top 50 Players In The 2015 NBA Draft
         Class
         :name: projecting-the-top-50-players-in-the-2015-nba-draft-class

      .. rubric:: Description
         :name: description

      The raw data behind the story "Projecting The Top 50 Players In
      The 2015 NBA Draft Class"
      https://fivethirtyeight.com/features/projecting-the-top-50-players-in-the-2015-nba-draft-class/.
      An analysis using this data was contributed by G. Elliott Morris
      as a package vignette at
      https://fivethirtyeightdata.github.io/fivethirtyeightdata/articles/NBA.html.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nba_draft_2015

      .. rubric:: Format
         :name: format

      A data frame with 1090 rows representing National Basketball
      Association players/prospects and 9 variables:

      player
         Player name

      position
         The player's position going into the draft

      id
         The player's identification code

      draft_year
         The year the player was eligible for the NBA draft

      projected_spm
         The model's projected statistical plus/minus over years 2-5 of
         the player's NBA career

      superstar
         Probability of becoming a superstar player (1 per draft, SPM >=
         +3.3)

      starter
         Probability of becoming a starting-caliber player (10 per
         draft, SPM >= +0.5)

      role_player
         Probability of becoming a role player (25 per draft, SPM >=
         -1.4)

      bust
         Probability of becoming a bust (everyone else, SPM < -1.4)

      .. rubric:: Source
         :name: source

      See
      https://fivethirtyeight.com/features/projecting-the-top-50-players-in-the-2015-nba-draft-class/
