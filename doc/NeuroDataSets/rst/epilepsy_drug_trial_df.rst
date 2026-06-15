====================== ===============
epilepsy_drug_trial_df R Documentation
====================== ===============

Epileptic Seizures Clinical Drug Trial
--------------------------------------

Description
~~~~~~~~~~~

This dataset, epilepsy_drug_trial_df, is a data frame containing seizure
counts from a clinical trial of anti-epileptic medication. The data
includes seizure frequency measurements along with treatment indicators
and patient covariates for 295 observations.

Usage
~~~~~

.. code:: R

   data(epilepsy_drug_trial_df)

Format
~~~~~~

A data frame with 295 observations and 6 variables:

seizures
   Numeric: Count of epileptic seizures

id
   Integer: Patient identification number

treat
   Numeric: Treatment indicator

expind
   Numeric: Exposure period indicator

timeadj
   Numeric: Adjusted time period

age
   Numeric: Patient age in years

Details
~~~~~~~

The dataset name has been kept as 'epilepsy_drug_trial_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package. The
suffix 'df' indicates that the dataset is a data frame. The original
content has not been modified.

Source
~~~~~~

Data taken from the faraway package version 1.0.9
