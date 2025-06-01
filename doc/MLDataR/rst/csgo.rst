.. container::

   .. container::

      ==== ===============
      csgo R Documentation
      ==== ===============

      .. rubric:: csgo
         :name: csgo

      .. rubric:: Description
         :name: description

      csgo

      .. rubric:: Usage
         :name: usage

      .. code:: R

         csgo

      .. rubric:: Format
         :name: format

      A data frame with 1,133 rows and 17 variables:

      map
         Map on which the match was played

      day
         Day of the month

      month
         Month of the year

      year
         Year

      date
         Date of match DD/MM/YYYY

      wait_time_s
         Time waited to find match

      match_time_s
         Total match length in seconds

      team_a_rounds
         Number of rounds played as Team A

      team_b_rounds
         Number of rounds played as Team B

      ping
         Maximum ping in milliseconds;the signal that's sent from one
         computer to another on the same network

      kills
         Number of kills accumulated in match; max 5 per round

      assists
         Number of assists accumulated in a match,inflicting oppononent
         with more than 50 percent damage,who is then killed by another
         player accumulated in match max 5 per round

      deaths
         Number of times player died during match;max 1 per round

      mvps
         Most Valuable Player award

      hs_percent
         Percentage of kills that were a result from a shot to
         opponent's head

      points
         Number of points accumulated during match. Apoints are gained
         from kills, assists,bomb defuses & bomb plants. Points are lost
         for sucicide and friendly kills

      result
         The result of the match, Win, Loss, Draw

      .. rubric:: Source
         :name: source

      Extracted by Asif Laldin a.laldin@nhs.net, March-2019
