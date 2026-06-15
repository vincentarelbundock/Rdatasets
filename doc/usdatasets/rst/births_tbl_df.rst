============= ===============
births_tbl_df R Documentation
============= ===============

North Carolina births, 100 cases
--------------------------------

Description
~~~~~~~~~~~

The dataset name has been changed to 'births_tbl_df' to avoid confusion
with other packages in the R ecosystem from which datasets have been
sourced. This naming convention helps distinguish this dataset as part
of the 'usdatasets' package and assists users in identifying its
specific characteristics. The suffix 'tbl_df' identifies the dataset as
a tibble. The original content of the dataset has not been modified in
any way.

Usage
~~~~~

.. code:: R

   data(births_tbl_df)

Format
~~~~~~

A tibble with 150 observations and 9 variables:

f_age
   Age of the father (in years).

m_age
   Age of the mother (in years).

weeks
   Number of weeks of pregnancy.

premature
   Indicates if the baby is premature (factor: yes/no).

visits
   Number of prenatal visits.

gained
   Weight gained by the mother during pregnancy (in pounds).

weight
   Birth weight of the baby (in grams).

sex_baby
   Sex of the baby (factor: male/female).

smoke
   Indicates if the mother smoked during pregnancy (factor: yes/no).

Source
~~~~~~

National Vital Statistics Reports
