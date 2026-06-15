============= ===============
Bigten_tbl_df R Documentation
============= ===============

Grad Rates: Athletes vs. Non-Athletes Big Ten Conf.
---------------------------------------------------

Description
~~~~~~~~~~~

This dataset, Bigten_tbl_df, is a tibble containing information about
the graduation rates of student athletes and nonathletes in the Big Ten
Conference. The dataset includes data from two academic years, showing
the graduation rates by school and athlete status (athletes vs
nonathletes).

Usage
~~~~~

.. code:: R

   data(Bigten_tbl_df)

Format
~~~~~~

A tibble with 44 observations and 4 variables:

school
   Name of the school (character).

year
   Year of the data (factor with 2 levels).

rate
   Graduation rate percentage (integer).

status
   Athlete status (character, either 'Athlete' or 'Nonathlete').

Details
~~~~~~~

The dataset name has been kept as 'Bigten_tbl_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the educationR package and assists
users in identifying its specific characteristics. The suffix 'tbl_df'
indicates that the dataset is a tibble. The original content has not
been modified in any way.

Source
~~~~~~

NCAA Graduation Rates Report, 2000.
