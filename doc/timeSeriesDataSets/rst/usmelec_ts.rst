========== ===============
usmelec_ts R Documentation
========== ===============

Monthly Total Net Electricity Generation in the USA
---------------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'usmelec_ts' to avoid confusion
with other datasets in the R ecosystem from which data have been
sourced. The suffix 'ts' indicates that this dataset is a time series
object. This naming convention helps distinguish this dataset as part of
the 'timeseriesdatasets' package and assists users in identifying its
specific characteristics. The original content of the dataset has not
been modified in any way.

Usage
~~~~~

.. code:: R

   data(usmelec_ts)

Format
~~~~~~

A 'ts' object with 486 observations:

time
   Monthly time series from January 1973 to June 2013.

value
   Total net electricity generation in the USA (in GWh).

Details
~~~~~~~

This dataset contains monthly total net electricity generation data for
the USA from January 1973 to June 2013. The values are measured in
gigawatt-hours (GWh).

Source
~~~~~~

U.S. Energy Information Administration (EIA).
