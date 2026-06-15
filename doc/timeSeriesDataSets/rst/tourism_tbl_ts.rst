============== ===============
tourism_tbl_ts R Documentation
============== ===============

Australian Domestic Overnight Trips
-----------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'tourism_tbl_ts' to avoid confusion
with other datasets in the R ecosystem from which data have been
sourced. The suffix 'tbl_ts' indicates that this dataset is a time
series object formatted as a tibble. This naming convention helps
distinguish this dataset as part of the 'timeseriesdatasets' package and
assists users in identifying its specific characteristics. The original
content of the dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(tourism_tbl_ts)

Format
~~~~~~

A 'tbl_ts' object with 24,320 observations:

Quarter
   The quarter of the year when the trips were taken.

Region
   The region in Australia where the trips occurred.

State
   The state in Australia where the trips occurred.

Purpose
   The purpose of the trips (e.g., holiday, business).

Trips
   The number of overnight trips.

Details
~~~~~~~

This dataset contains data on domestic overnight trips taken within
Australia, categorized by quarter, region, state, and purpose. The data
covers various time periods and provides insight into travel patterns
across different states and regions.

Source
~~~~~~

Australian Bureau of Statistics.
