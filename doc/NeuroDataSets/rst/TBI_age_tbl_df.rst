============== ===============
TBI_age_tbl_df R Documentation
============== ===============

Traumatic Brain Injury (TBI) Cases by Age Group and Injury Mechanism
--------------------------------------------------------------------

Description
~~~~~~~~~~~

This dataset, TBI_age_tbl_df, is a tibble containing information from
the year 2014 on traumatic brain injury (TBI) cases across different age
groups. The dataset provides details on the mechanisms that caused the
injuries, the type of injury, the estimated number of observed cases,
and the estimated rate of cases per 100,000 people.

Usage
~~~~~

.. code:: R

   data(TBI_age_tbl_df)

Format
~~~~~~

A tibble with 231 observations and 5 variables:

age_group
   Age group category (character)

type
   Type of traumatic brain injury (character)

injury_mechanism
   Mechanism by which the injury occurred (character)

number_est
   Estimated number of observed cases in 2014 (numeric)

rate_est
   Estimated rate of cases per 100,000 population in 2014 (numeric)

Details
~~~~~~~

The dataset name has been kept as TBI_age_tbl_df to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix
tbl_df indicates that the dataset is a tibble (a modern data frame). The
original content has not been modified in any way. Variable names and
values are provided exactly as they appear in the source.

Source
~~~~~~

Data taken from Kaggle:
https://www.kaggle.com/datasets/jessemostipak/traumatic-brain-injury-tbi
