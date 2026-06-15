================= ===============
hist_senate_preds R Documentation
================= ===============

How The FiveThirtyEight Senate Forecast Model Works
---------------------------------------------------

Description
~~~~~~~~~~~

The raw data behind the story "How The FiveThirtyEight Senate Forecast
Model Works"
https://fivethirtyeight.com/features/how-the-fivethirtyeight-senate-forecast-model-works/.

Usage
~~~~~

.. code:: R

   hist_senate_preds

Format
~~~~~~

A data frame with 207 rows representing US state elections and 5
variables:

state
   Election

year
   Year of election

candidate
   Last name

forecast_prob
   Probability of winning election per FiveThirtyEight Election Day
   forecast

result
   'Win' or 'Loss'

Source
~~~~~~

See
https://github.com/fivethirtyeight/data/tree/master/forecast-methodology
