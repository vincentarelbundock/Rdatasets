================= ===============
pedestrian_tbl_ts R Documentation
================= ===============

Pedestrian Counts in the City of Melbourne
------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'pedestrian_tbl_ts' to avoid
confusion with other packages in the R ecosystem from which datasets
have been sourced. The suffix 'tbl_ts' indicates that this dataset is a
tibble-based time series object. This naming convention helps
distinguish this dataset as part of the 'timeseriesdatasets' package and
assists users in identifying its specific characteristics. The original
content of the dataset has not been modified in any way.

Usage
~~~~~

.. code:: R

   data(pedestrian_tbl_ts)

Format
~~~~~~

A 'tbl_ts' object with 66,037 rows and 5 columns:

Sensor
   Identifier for the sensor used to count pedestrians.

Date_Time
   Date and time of the pedestrian count (POSIXct format).

Date
   Date of the pedestrian count (Date format).

Time
   Time of the pedestrian count (Time format).

Count
   Number of pedestrians counted.

Details
~~~~~~~

This dataset contains pedestrian count data collected from various
sensors located throughout the city of Melbourne. The data includes
information on the date and time of each count as well as the number of
pedestrians detected.

Source
~~~~~~

City of Melbourne, Australia.
