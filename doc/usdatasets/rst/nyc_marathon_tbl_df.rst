=================== ===============
nyc_marathon_tbl_df R Documentation
=================== ===============

New York City Marathon Times
----------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'nyc_marathon_tbl_df' to avoid
confusion with other packages in the R ecosystem. This naming convention
helps distinguish this dataset as part of the 'usdatasets' package and
identifies it as a tibble. The original content of the dataset has not
been modified.

Usage
~~~~~

.. code:: R

   data(nyc_marathon_tbl_df)

Format
~~~~~~

A tibble with 102 observations and 7 variables:

year
   Numeric value representing the year the marathon took place.

name
   Character value representing the name of the runner.

country
   Character value indicating the country of origin of the runner.

time
   Time variable in 'hms' format representing the finish time of the
   runner.

time_hrs
   Numeric value representing the finish time of the runner in hours.

division
   Character value indicating the division (category) the runner
   participated in.

note
   Character value containing additional notes, if any, about the runner
   or the race.

Source
~~~~~~

Data from the New York City Marathon records
