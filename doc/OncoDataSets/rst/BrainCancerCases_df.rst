=================== ===============
BrainCancerCases_df R Documentation
=================== ===============

New Mexico Brain Cancer Cases Data
----------------------------------

Description
~~~~~~~~~~~

This dataset, BrainCancerCases_df, is a data frame containing data on
brain cancer cases in New Mexico. It includes information about the
county, number of cases, year of diagnosis, age group, and sex of the
patients. The dataset consists of 1175 observations with 5 variables.

Usage
~~~~~

.. code:: R

   data(BrainCancerCases_df)

Format
~~~~~~

A data frame with 1175 observations and 5 variables:

county
   County of diagnosis (Factor with 31 levels).

cases
   Number of cases (integer).

year
   Year of diagnosis (integer).

agegroup
   Age group of patients (integer).

sex
   Sex of the patient (integer).

Details
~~~~~~~

The dataset name has been kept as 'BrainCancerCases_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the OncoDataSets package and
assists users in identifying its specific characteristics. The suffix
'\_df' indicates that the dataset is a data frame. The original content
has not been modified in any way.

Source
~~~~~~

Data taken from the rsatscan package, distributed with SaTScan software:
https://www.satscan.org
