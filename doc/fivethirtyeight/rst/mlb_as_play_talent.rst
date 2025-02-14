.. container::

   .. container::

      ================== ===============
      mlb_as_play_talent R Documentation
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

         mlb_as_play_talent

      .. rubric:: Format
         :name: format

      A data frame with 3930 rows representing Major League Baseball
      players in given seasons and 15 variables:

      bbref_id
         Player's ID at Baseball-Reference.com

      yearid
         The season in question

      gamenum
         Order of All-Star Game for the season (in years w/ multiple
         ASGs; set to 0 when only 1 per year)

      gameid
         Game ID at Baseball-Reference.com

      lgid
         League of All-Star team

      startingpos
         Position (according to baseball convention; 1=pitcher,
         2=catcher, etc.) if starter

      off600
         Estimate of offensive talent, in runs above league average per
         600 plate appearances

      def600
         Estimate of fielding talent, in runs above league average per
         600 plate appearances

      pitch200
         Estimate of pitching talent, in runs above league average per
         200 innings pitched

      asg_pa
         Number of plate appearances in the All-Star Game itself

      asg_ip
         Number of innings pitched in the All-Star Game itself

      offper9innasg
         Expected offensive runs added above average (from talent) based
         on PA in ASG, scaled to a 9-inning game

      defper9innasg
         Expected defensive runs added above average (from talent) based
         on PA in ASG, scaled to a 9-inning game

      pitper9innasg
         Expected pitching runs added above average (from talent) based
         on IP in ASG, scaled to a 9-inning game

      totper9innasg
         Expected runs added above average (from talent) based on PA/IP
         in ASG, scaled to a 9-inning game

      .. rubric:: Source
         :name: source

      https://www.baseball-reference.com/ , http://chadwick-bureau.com,
      Fangraphs
