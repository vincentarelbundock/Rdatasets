=================== ===============
TBI_military_tbl_df R Documentation
=================== ===============

Traumatic Brain Injury (TBI) in U.S. Military Personnel
-------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, TBI_military_tbl_df, is a tibble containing information on
traumatic brain injuries (TBI) diagnosed among U.S. military personnel.
The dataset includes the service branch, military component, severity of
the injury, number of diagnosed cases, and the year of observation.

Usage
~~~~~

.. code:: R

   data(TBI_military_tbl_df)

Format
~~~~~~

A tibble with 438 observations and 5 variables:

service
   Branch of military service (character)

component
   Status of the individual (active duty, reserve, or guard) (character)

severity
   Severity category of the traumatic brain injury (character)

diagnosed
   Number of diagnosed TBI cases (numeric)

year
   Year of recorded TBI diagnosis (numeric)

Details
~~~~~~~

The dataset name has been kept as TBI_military_tbl_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/jessemostipak/traumatic-brain-injury-tbi
