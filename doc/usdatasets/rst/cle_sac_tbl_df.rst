============== ===============
cle_sac_tbl_df R Documentation
============== ===============

Cleveland and Sacramento Demographic and Income Data (2000)
-----------------------------------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'cle_sac_tbl_df' to avoid confusion
with other packages in the R ecosystem from which datasets have been
sourced. This naming convention helps distinguish this dataset as part
of the 'usdatasets' package and assists users in identifying its
specific characteristics. The suffix 'tbl_df' identifies the dataset as
a tibble. The original content of the dataset has not been modified in
any way.

Usage
~~~~~

.. code:: R

   data(cle_sac_tbl_df)

Format
~~~~~~

A tibble with 500 observations and 8 variables:

year
   Year of the observation (integer).

state
   State of the observation (factor with 2 levels).

city
   City of the observation (character).

age
   Age of the individual (integer).

sex
   Sex of the individual (factor with 2 levels).

race
   Race of the individual (character).

marital_status
   Marital status of the individual (character).

personal_income
   Personal income of the individual (integer).

Source
~~~~~~

Cleveland Study
