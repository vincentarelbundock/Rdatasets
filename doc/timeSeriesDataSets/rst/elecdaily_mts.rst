============= ===============
elecdaily_mts R Documentation
============= ===============

Half-Hourly and Daily Electricity Demand for Victoria, Australia, in 2014.
--------------------------------------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'elecdaily_mts' to avoid confusion
with other packages in the R ecosystem from which datasets have been
sourced. The suffix 'mts' indicates that this dataset is a multivariate
time series object. This naming convention helps distinguish this
dataset as part of the 'timeseriesdatasets' package and assists users in
identifying its specific characteristics. The original content of the
dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(elecdaily_mts)

Format
~~~~~~

A time series object with 365 observations and 3 variables:

Demand
   A numeric vector representing the half-hourly electricity demand in
   megawatts (MW).

WorkDay
   A binary vector indicating whether the day is a working day (1 = yes,
   0 = no).

Temperature
   A numeric vector representing the daily average temperature in
   degrees Celsius.

Source
~~~~~~

Data provided by the Australian Energy Market Operator (AEMO).
