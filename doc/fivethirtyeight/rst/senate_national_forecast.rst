======================== ===============
senate_national_forecast R Documentation
======================== ===============

Senate Forecast 2018
--------------------

Description
~~~~~~~~~~~

This file contains links to the data behind FiveThirtyEight's 'Senate
forecasts'
https://projects.fivethirtyeight.com/2018-midterm-election-forecast/senate/

Usage
~~~~~

.. code:: R

   senate_national_forecast

Format
~~~~~~

A dataframe with 450 rows representing national-level results of the
classic, lite, and deluxe Senate forecasts since Aug. 1, 2018 and 11
variables

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

Note
~~~~

The original dataset included a meaningless column called "state", and
all variables under this column was "US". So this column was removed.

Source
~~~~~~

FiveThirtyEight’s House, Senate And Governor Models Methodology:
https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/

See Also
~~~~~~~~

``senate_seat_forecast``
