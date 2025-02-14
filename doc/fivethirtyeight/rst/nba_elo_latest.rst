.. container::

   .. container::

      ======= ===============
      nba_elo R Documentation
      ======= ===============

      .. rubric:: NBA Elo Ratings
         :name: nba-elo-ratings

      .. rubric:: Description
         :name: description

      The raw data behind all nba predictions, including the story "The
      Complete History of the NBA"
      https://projects.fivethirtyeight.com/complete-history-of-the-nba

      .. rubric:: Usage
         :name: usage

      .. code:: R

         nba_elo_latest

      .. rubric:: Format
         :name: format

      An object of class ``spec_tbl_df`` (inherits from ``tbl_df``,
      ``tbl``, ``data.frame``) with 1230 rows and 24 columns.

      .. rubric:: nba_elo_latest
         :name: nba_elo_latest

      A data frame with 1230 rows representing game played during the
      most current season of the NBA, and 24 variables:

      date
         Date

      season
         the season in which the game was played

      neutral
         True if the game was played on neutral territory, False if not

      playoff
         True if the game was played in a playoff, False if not

      team1
         name of first team

      team2
         name of second team

      elo1_pre
         Team 1 Elo rating before game

      elo2_pre
         Team 2 Elo rating before game

      elo_prob1
         Team 1's probability of winning based on Elo rating

      elo_prob2
         Team 2's probability of winning based on Elo rating

      elo1_post
         Team 1 Elo rating after the game

      elo2_post
         Team 2 Elo rating after the game

      score1
         the score of team 1

      score2
         the score of team 2
