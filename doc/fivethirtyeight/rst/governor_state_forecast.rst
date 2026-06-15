======================= ===============
governor_state_forecast R Documentation
======================= ===============

2018 Governors Forecast
-----------------------

Description
~~~~~~~~~~~

The raw data behind the story 'Forecasting the races for governor'
https://projects.fivethirtyeight.com/2018-midterm-election-forecast/governor/

Usage
~~~~~

.. code:: R

   governor_state_forecast

Format
~~~~~~

A dataframe with 7743 rows representing state-level results of the
classic, lite, and deluxe gubernatorial forecasts since Oct. 11, 2018.
and 10 variables

forecastdate
   date of the forecast

state
   state of the forecast

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

Note
~~~~

The original dataset included two empty column "district" and
"special",which were removed.

Source
~~~~~~

FiveThirtyEight’s House, Senate And Governor Models Methodology:
https://fivethirtyeight.com/methodology/how-fivethirtyeights-house-and-senate-models-work/

See Also
~~~~~~~~

``governor_national_forecast``
