.. container::

   ========= ===============
   mlb_teams R Documentation
   ========= ===============

   .. rubric:: Major League Baseball Teams Data.
      :name: major-league-baseball-teams-data.

   .. rubric:: Description
      :name: description

   A subset of data on Major League Baseball teams from Lahman's
   Baseball Database. The full data set is available in the `Lahman R
   package <https://github.com/cdalzell/Lahman>`__.

   .. rubric:: Usage
      :name: usage

   ::

      mlb_teams

   .. rubric:: Format
      :name: format

   A data frame with 2784 rows and 41 variables.

   year
      Year of play.

   league_id
      League the team plays in with levels AL (American League) and NL
      (National League).

   division_id
      Division the team plays in with levels W (west), E (east) and C
      (central).

   rank
      Team's rank in their division at the end of the regular season.

   games_played
      Games played.

   home_games
      Games played at home.

   wins
      Number of games won.

   losses
      Number of games lost.

   division_winner
      Did the team win their division? Levels of Y (yes) and N (no).

   wild_card_winner
      Was the team a wild card winner. Levels of Y (yes) and N (no).

   league_winner
      Did the team win their league? Levels of Y (yes) and N (no).

   world_series_winner
      Did the team win the World Series? Levels of Y (yes) and N (no).

   runs_scored
      Number of runs scored during the season.

   at_bats
      Number of at bats during the season.

   hits
      Number of hits during the season. Includes singles, doubles,
      triples and homeruns.

   doubles
      Number of doubles hit.

   triples
      Number of triples hit.

   homeruns
      Homeruns by batters.

   walks
      Number of walks.

   strikeouts_by_batters
      Number of batters struckout.

   stolen_bases
      Number of stolen bases.

   caught_stealing
      Number of base runners caught stealing.

   batters_hit_by_pitch
      Number of batters hit by a pitch.

   sacrifice_flies
      Number of sacrifice flies.

   opponents_runs_scored
      Number of runs scored by opponents.

   earned_runs_allowed
      Number of earned runs allowed.

   earned_run_average
      Earned run average.

   complete_games
      Number of games where a single pitcher played the entire game.

   shutouts
      Number of shutouts.

   saves
      Number of saves.

   outs_pitches
      Number of outs pitched for the season (number of innings pitched
      times 3).

   hits_allowed
      Number of hits made by opponents.

   homeruns_allowed
      Number of homeruns hit by opponents.

   walks_allowed
      Number of opponents who were walked.

   strikeouts_by_pitchers
      Number of opponents who were struckout.

   errors
      Number of errors.

   double_plays
      Number of double plays.

   fielding_percentage
      Teams fielding percentage.

   team_name
      Full name of team.

   ball_park
      Home ballpark name.

   home_attendance
      Home attendance total.

   .. rubric:: Source
      :name: source

   `Lahmans Baseball
   Database <https://www.seanlahman.com/baseball-archive/statistics/>`__

   .. rubric:: Examples
      :name: examples

   ::

      library(dplyr)

      # List the World Series winning teams for each year
      mlb_teams %>%
        filter(world_series_winner == "Y") %>%
        select(year, team_name, ball_park)

      # List the teams with their average number of wins and losses
      mlb_teams %>%
        group_by(team_name) %>%
        summarize(mean_wins = mean(wins), mean_losses = mean(losses)) %>%
        arrange((team_name))
