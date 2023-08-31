.. container::

   ========== ===============
   series_raw R Documentation
   ========== ===============

   .. rubric:: Data about each series aired in the UK (raw)
      :name: series_raw

   .. rubric:: Description
      :name: description

   This dataset has one row per series aired in the UK as 'The Great
   British Bake Off'. When did a series premiere in the UK? When was the
   finale episode? How many viewers on average did a series have?

   .. rubric:: Usage
      :name: usage

   .. code:: R

      series_raw

   .. rubric:: Format
      :name: format

   A data frame with 10 rows representing individual series and 11
   variables:

   series
      A factor denoting UK series (``1``-``10``).

   episodes
      An integer denoting total number of episodes within series.

   premiere
      A date denoting original airdate of series premiere episode in the
      UK.

   finale
      A date denoting original airdate of series finale episode in the
      UK.

   winner
      A character string denoting name of series winner.

   avg_uk_viewers
      Average UK viewers in millions. Also see ``ratings``.

   day_of_week
      A character string denoting weekday that series' episodes aired in
      UK.

   timeslot
      time of day that series' episodes aired in UK (24-hour clock).

   channel
      A character string denoting channel that series aired on: one of
      ``⁠BBC One⁠``, ``⁠BBC Two⁠``, or ``⁠Channel 4⁠``.

   runner_up_1
      A character string denoting the name of one of the bakers who was
      a series runner-up. The number is not meaningful.

   runner_up_2
      A character string denoting the name of one of the bakers who was
      a series runner-up. The number is not meaningful.

   .. rubric:: Source
      :name: source

   See
   https://en.wikipedia.org/wiki/The_Great_British_Bake_Off#Series_overview

   .. rubric:: Examples
      :name: examples

   .. code:: R

      if (require('tibble')) {
        series_raw
       }
      head(series_raw)
