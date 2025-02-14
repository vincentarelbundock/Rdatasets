.. container::

   .. container::

      ======================= ===============
      house_national_forecast R Documentation
      ======================= ===============

      .. rubric:: 2018 House Forecast
         :name: house-forecast

      .. rubric:: Description
         :name: description

      The raw data behind the story 'Forecasting the race for the House'
      https://projects.fivethirtyeight.com/2018-midterm-election-forecast/house/

      .. rubric:: Usage
         :name: usage

      .. code:: R

         house_national_forecast

      .. rubric:: Format
         :name: format

      A dataframe with 588 rows representing district-level results of
      the classic, lite, and deluxe house forecasts since 2018/08/01 and
      11 variables.

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

      ``house_district_forecast``
