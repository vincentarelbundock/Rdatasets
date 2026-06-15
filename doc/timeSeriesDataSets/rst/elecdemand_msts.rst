=============== ===============
elecdemand_msts R Documentation
=============== ===============

Half-Hourly and Daily Electricity Demand for Victoria, Australia, in 2014.
--------------------------------------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'elecdemand_msts' to avoid
confusion with other packages in the R ecosystem from which datasets
have been sourced. The suffix 'msts' indicates that this dataset is a
time series object with multiple seasonalities. This naming convention
helps distinguish this dataset as part of the 'timeseriesdatasets'
package and assists users in identifying its specific characteristics.
The original content of the dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(elecdemand_msts)

Format
~~~~~~

A time series object with multiple seasonalities and 17,520
observations:

Demand
   A numeric vector representing the half-hourly electricity demand in
   megawatts (MW).

WorkDay
   A binary vector indicating whether the half-hour period is on a
   working day (1 = yes, 0 = no).

Temperature
   A numeric vector representing the half-hourly temperature in degrees
   Celsius.

Source
~~~~~~

Data provided by the Australian Energy Market Operator (AEMO).
