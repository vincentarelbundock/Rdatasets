.. container::

   .. container::

      ==================== ===============
      senate_seat_forecast R Documentation
      ==================== ===============

      .. rubric:: Senate Forecast 2018
         :name: senate-forecast-2018

      .. rubric:: Description
         :name: description

      This file contains links to the data behind FiveThirtyEight's
      'Senate forecasts'
      https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         senate_seat_forecast

      .. rubric:: Format
         :name: format

      A dataframe with 28353 rows representing seat-level results of the
      classic, lite, and deluxe Senate forecasts since Aug. 1, 2018 and
      12 variables

      forecastdate
         date of the forecast

      state
         state of the forecast

      class
         class of the forecast

      special
         unknown

      candidate
         name of the candidate

      party
         party of the candidate

      incumbent
         whether the candidate is incumbent

      model
         the model of the forecast

      win_probability
         the probability of the corresponding party winning

      voteshare
         the voteshare of the corresponding party

      p10_voteshare
         the top 10 percentile of the voteshare

      p90_voteshare
         the top 00 percentile of the voteshare

      .. rubric:: Source
         :name: source

      FiveThirtyEight’s House, Senate And Governor Models Methodology:
      https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/

      .. rubric:: See Also
         :name: see-also

      ``senate_national_forecast``
