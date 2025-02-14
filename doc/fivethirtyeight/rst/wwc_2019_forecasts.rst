.. container::

   .. container::

      ======== ===============
      wwc_2019 R Documentation
      ======== ===============

      .. rubric:: 2019 Women's World Cup Predictions
         :name: womens-world-cup-predictions

      .. rubric:: Description
         :name: description

      The raw data behind the story "2019 Women’s World Cup Predictions"
      https://projects.fivethirtyeight.com/2019-womens-world-cup-predictions/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         wwc_2019_forecasts

         wwc_2019_matches

      .. rubric:: Format
         :name: format

      2 dataframes about the 2019 Women's World Cup matches and teams

      An object of class ``spec_tbl_df`` (inherits from ``tbl_df``,
      ``tbl``, ``data.frame``) with 52 rows and 18 columns.

      .. rubric:: wwc_2019_forecasts
         :name: wwc_2019_forecasts

      A data frame with 192 rows representing 2019 Women's World Cup
      team match-by-match projections, and 21 variables:

      date
         Date match was played

      team
         Team

      group
         Assigned group for the group stage

      spi
         Soccer power index

      global_o
         SPI offensive rating

      global_d
         SPI defensive rating

      sim_wins
         Simulated number of wins

      sim_ties
         Simulated number of ties

      sim_losses
         Simulated number of losses

      sim_goal_diff
         Simulated difference between goals_scored and goals_against

      goals_scored
         The number of goals that a team is expected to score against an
         average team on a neutral field

      goals_against
         The number of goals that a team is expected to concede against
         an average team on a neutral field

      group_1
         Chance of winning group stage game 1

      group_2
         Chance of winning group stage game 2

      group_3
         Chance of winning group stage game 3

      group_4
         Chance of winning group stage game 4

      make_round_of_16
         Chance of playing in the round of 16

      make_quarters
         Chance of playing in the quarter-finals

      make_semis
         Chance of playing in the semi-finals

      make_final
         Chance of playing in the finals

      win_league
         Chance of winning the tournament

      .. rubric:: wwc_2019_matches
         :name: wwc_2019_matches

      2019 Women's World Cup Predictions A data frame with 52 rows
      representing Women's World Cup matches, and 18 variables:

      date
         Date match was played

      team1
         Team 1

      team2
         Team 2

      spi1
         Soccer power index of team 1

      spi2
         Soccer power index of team 2

      prob1
         Probability that team 1 will win match

      prob2
         Probability that team 2 will win match

      prob_tie
         Probability that the teams will tie the match

      proj_score1
         Projected number of goals scored by team 1

      proj_score2
         Projected number of goals scored by team 2

      score1
         Actual number of goals scored by team 1

      score2
         Actual number of goals scored by team 2

      xg1
         Shot-based expected goals for team 1

      xg2
         Shot-based expected goals for team 2

      nsxg1
         Non-shot expected goals for team 1

      nsxg2
         Non-shot expected goals for team 2

      adj_score1
         Goals scored by team 1 accounting for the conditions under
         which each goal was scored

      adj_score2
         Goals scored by team 2 accounting for the conditions under
         which each goal was scored

      .. rubric:: Source
         :name: source

      https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_forecasts.csv

      https://projects.fivethirtyeight.com/soccer-api/international/2019/wwc_matches.csv
