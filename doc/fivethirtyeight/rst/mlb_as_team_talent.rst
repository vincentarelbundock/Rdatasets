.. container::

   .. container::

      ================== ===============
      mlb_as_team_talent R Documentation
      ================== ===============

      .. rubric:: The Best MLB All-Star Teams Ever
         :name: the-best-mlb-all-star-teams-ever

      .. rubric:: Description
         :name: description

      The raw data behind the story "The Best MLB All-Star Teams Ever"
      https://fivethirtyeight.com/features/the-best-mlb-all-star-teams-ever/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         mlb_as_team_talent

      .. rubric:: Format
         :name: format

      A data frame with 172 rows representing Major League Baseball
      seasons and 16 variables:

      yearid
         The season in question

      gamenum
         Order of All-Star Game for the season (in years w/ multiple
         ASGs; set to 0 when only 1 per year)

      gameid
         Game ID at Baseball-Reference.com

      lgid
         League of All-Star team

      tm_off_talent
         Total runs of offensive talent above average per game (36 plate
         appearances)

      tm_def_talent
         Total runs of fielding talent above average per game (36 plate
         appearances)

      tm_pit_talent
         Total runs of pitching talent above average per game (9
         innings)

      mlb_avg_rpg
         MLB average runs scored/game that season

      talent_rspg
         Expected runs scored per game based on talent (MLB R/G + team
         OFF talent)

      talent_rapg
         Expected runs allowed per game based on talent (MLB R/G - team
         DEF talent- team PIT talent)

      unadj_pyth
         Unadjusted Pythagorean talent rating; PYTH
         =(RSPG^1.83)/(RSPG^1.83+RAPG^1.83)

      timeline_adj
         Estimate of relative league quality where 2015 MLB = 1.00

      sos
         Strength of schedule faced; adjusts an assumed .500 SOS
         downward based on timeline adjustment

      adj_pyth
         Adjusted Pythagorean record;
         =(SOS*unadj_Pyth)/((2*unadj_Pyth*SOS)-SOS-unadj_Pyth+1)

      no_1_player
         Best player according to combo of actual PA/IP and talent

      no_2_player
         2nd-best player according to combo of actual PA/IP and talent

      .. rubric:: Source
         :name: source

      https://www.baseball-reference.com/ , http://chadwick-bureau.com,
      Fangraphs
