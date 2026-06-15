================ ===============
USCancerStats_df R Documentation
================ ===============

US Cancer Incidence, Mortality, and Survival Changes
----------------------------------------------------

Description
~~~~~~~~~~~

This dataset, USCancerStats_df, is a data frame containing cancer
statistics for 20 solid tumor types, including incidence, mortality, and
survival data. The dataset reports the absolute difference in 5-year
survival between 1989-1995 and 1950-1954, as well as the percentage
change in mortality and incidence from 1950 to 1996.

Usage
~~~~~

.. code:: R

   data(USCancerStats_df)

Format
~~~~~~

A data frame with 20 observations and 4 variables:

site
   Tumor site (character).

survival
   Absolute difference in 5-year survival (numeric).

mortality
   Percentage change in mortality (numeric).

incidence
   Percentage change in incidence (numeric).

Details
~~~~~~~

The dataset name has been kept as 'USCancerStats_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the OncoDataSets package and assists
users in identifying its specific characteristics. The suffix '\_df'
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the R4HCR package.
