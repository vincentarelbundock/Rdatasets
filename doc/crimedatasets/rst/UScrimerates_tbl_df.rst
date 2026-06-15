=================== ===============
UScrimerates_tbl_df R Documentation
=================== ===============

US Crime Rates (1960–2019)
--------------------------

Description
~~~~~~~~~~~

This dataset contains national data on the number of crimes committed in
the United States between 1960 and 2019. It provides annual statistics
on total crimes, violent crimes, property crimes, and their
subcategories.

Usage
~~~~~

.. code:: R

   data(UScrimerates_tbl_df)

Format
~~~~~~

A tibble with 60 rows and 12 variables:

year
   Year of the recorded data (numeric).

population
   Total US population (numeric).

total
   Total number of crimes (numeric).

violent
   Total number of violent crimes (numeric).

property
   Total number of property crimes (numeric).

murder
   Number of murders (numeric).

forcible_rape
   Number of reported cases of forcible rape (numeric).

robbery
   Number of robberies (numeric).

aggravated_assault
   Number of aggravated assaults (numeric).

burglary
   Number of burglaries (numeric).

larceny_theft
   Number of larceny-theft crimes (numeric).

vehicle_theft
   Number of motor vehicle thefts (numeric).

Details
~~~~~~~

The dataset name has been changed to 'UScrimerates_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is stored as a tibble. The original
content has not been modified in any way.

Source
~~~~~~

National crime data for the United States (1960–2019).
