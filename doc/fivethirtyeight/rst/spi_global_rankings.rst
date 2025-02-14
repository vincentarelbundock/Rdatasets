.. container::

   .. container::

      =================== ===============
      spi_global_rankings R Documentation
      =================== ===============

      .. rubric:: Current SPI ratings and rankings for men's club teams
         :name: current-spi-ratings-and-rankings-for-mens-club-teams

      .. rubric:: Description
         :name: description

      The raw data behind the stories "Club Soccer Predictions"
      https://projects.fivethirtyeight.com/soccer-predictions/ and
      "Global Club Soccer Rankings"
      https://projects.fivethirtyeight.com/soccer-predictions/global-club-rankings/.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         spi_global_rankings

      .. rubric:: Format
         :name: format

      A data frame with 453 rows representing soccer rankings and 7
      variables:

      name
         The name of the soccer club.

      league
         The name of the league to which the club belongs.

      rank
         A club's current global ranking.

      prev_rank
         A club's previous global ranking

      off
         Offensive rating for a given team (the higher the value the
         stronger the team's offense).

      def
         Defensive rating for a given team (the lower the value the
         stronger the team's defense).

      spi
         A club's SPI score.

      .. rubric:: Source
         :name: source

      See
      https://github.com/fivethirtyeight/data/blob/master/soccer-spi/README.md

      .. rubric:: See Also
         :name: see-also

      ``spi_matches``
