.. container::

   .. container::

      ======================== ===============
      senate_national_forecast R Documentation
      ======================== ===============

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

         senate_national_forecast

      .. rubric:: Format
         :name: format

      A dataframe with 450 rows representing national-level results of
      the classic, lite, and deluxe Senate forecasts since Aug. 1, 2018
      and 11 variables

      forecastdate
         date of the forecast

      party
         the party of the forecast

      model
         the model of the forecast

      win_probability
         the probability of the corresponding party winning

      mean_seats
         the mean of the number of seats

      median_seats
         the median number of seats

      p10_seats
         the top 10 percentile of number of seats

      p90_seats
         the top 90 percentile of number of seats

      margin
         unknown

      p10_margin
         the margin of p10_seats

      p90_margin
         the margin of p90_seats

      .. rubric:: Note
         :name: note

      The original dataset included a meaningless column called "state",
      and all variables under this column was "US". So this column was
      removed.

      .. rubric:: Source
         :name: source

      FiveThirtyEight’s House, Senate And Governor Models Methodology:
      https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/

      .. rubric:: See Also
         :name: see-also

      ``senate_seat_forecast``
