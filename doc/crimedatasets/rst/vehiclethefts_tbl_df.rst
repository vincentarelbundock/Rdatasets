==================== ===============
vehiclethefts_tbl_df R Documentation
==================== ===============

NYC Vehicle Thefts (2014-2017)
------------------------------

Description
~~~~~~~~~~~

This dataset contains detailed records of motor vehicle thefts in New
York City from 2014 to 2017. The dataset includes spatial coordinates,
timestamps, and additional contextual information about each theft. It
provides valuable insights into patterns and trends of vehicle thefts in
NYC.

Usage
~~~~~

.. code:: R

   data(vehiclethefts_tbl_df)

Format
~~~~~~

A tibble with 35,746 rows and 9 variables:

uid
   Unique identifier for each record (integer).

date_single
   Single date of the incident (character).

date_start
   Start date of the incident (character).

date_end
   End date of the incident (character).

longitude
   Longitude of the theft location (numeric).

latitude
   Latitude of the theft location (numeric).

location_type
   Type of location where the theft occurred (character).

location_category
   Category of the location (character).

census_block
   Census block of the theft location (character).

Details
~~~~~~~

The dataset name has been changed to 'vehiclethefts_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the crimedatasets package and
assists users in identifying its specific characteristics. The suffix
'tbl_df' indicates that the dataset is stored as a tibble in R. The
original content has not been modified in any way.

Source
~~~~~~

Crime Open Database: Motor Vehicle Theft Records.
