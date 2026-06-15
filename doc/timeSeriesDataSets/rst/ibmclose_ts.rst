=========== ===============
ibmclose_ts R Documentation
=========== ===============

Daily Closing Stock Prices of IBM.
----------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'ibmclose_ts' to avoid confusion
with other packages in the R ecosystem from which datasets have been
sourced. The suffix 'ts' indicates that this dataset is a time series
object. This naming convention helps distinguish this dataset as part of
the 'timeseriesdatasets' package and assists users in identifying its
specific characteristics. The original content of the dataset has not
been modified in any way.

Usage
~~~~~

.. code:: R

   data(ibmclose_ts)

Format
~~~~~~

A time series object with 369 observations:

ibmclose
   A numeric vector representing the daily closing stock price of IBM,
   measured in US dollars, over a period of 369 days.

Source
~~~~~~

Data provided by Yahoo Finance.
