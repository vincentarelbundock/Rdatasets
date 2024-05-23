.. container::

   .. container::

      ======= ===============
      ratings R Documentation
      ======= ===============

      .. rubric:: Ratings
         :name: ratings

      .. rubric:: Description
         :name: description

      This dataset has one row per episode and includes ratings plus
      original airdates in the UK (by series) and US (by season). This
      dataset is made by joining the ``ratings_raw`` and ``seasons_raw``
      datasets by both ``series`` and ``episode``.

      .. rubric:: Usage
         :name: usage

      .. code:: R

         ratings

      .. rubric:: Format
         :name: format

      A data frame with 94 rows representing individual episodes and 11
      variables:

      series
         An integer denoting UK series (``1``-``10``).

      episode
         An integer denoting episode number within a series.

      episode_count
         An integer denoting continuous episode number across series
         (``1``-``94``)

      uk_airdate
         A date denoting original airdate of episode in the UK.

      viewers_7day
         The number of viewers in millions within a 7-day window from
         airdate.

      viewers_28day
         The number of viewers in millions within a 28-day window from
         airdate.

      network_rank
         An integer denoting the episode's weekly ranking within network
         (note that the networks changed for series 8 and later).

      channels_rank
         An integer denoting the episode's weekly ranking across all
         channels.

      bbc_iplayer_requests
         Number of BBC iPlayer requests (note: not available for all
         series, and only for series that aired on the BBC).

      us_season
         An integer denoting US season (``1``-``5``).

      us_airdate
         A date denoting original airdate of episode in the US,
         according to
         `pbs.org <https://www.pbs.org/food/shows/great-british-baking-show/>`__.

      .. rubric:: Source
         :name: source

      See
      https://en.wikipedia.org/wiki/The_Great_British_Bake_Off_(series_1)#Ratings

      .. rubric:: Examples
         :name: examples

      .. code:: R

         if (require('tibble')) {
           ratings
          }
         head(ratings)
