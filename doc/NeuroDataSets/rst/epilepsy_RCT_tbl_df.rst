=================== ===============
epilepsy_RCT_tbl_df R Documentation
=================== ===============

Epilepsy Treatment Randomized Controlled Trial
----------------------------------------------

Description
~~~~~~~~~~~

This dataset, epilepsy_RCT_tbl_df, is a tibble containing data from a
randomized controlled trial of progabide for epilepsy treatment. The
trial recorded seizure counts for 59 patients at baseline and four
follow-up visits.

Usage
~~~~~

.. code:: R

   data(epilepsy_RCT_tbl_df)

Format
~~~~~~

A tibble with 59 observations and 8 variables:

id
   Integer: Patient identification number

treat
   Factor with 2 levels: Treatment group (progabide/control)

base
   Integer: Baseline seizure count

age
   Integer: Patient age in years

y1
   Integer: Seizure count at first follow-up

y2
   Integer: Seizure count at second follow-up

y3
   Integer: Seizure count at third follow-up

y4
   Integer: Seizure count at fourth follow-up

Details
~~~~~~~

The dataset name has been kept as 'epilepsy_RCT_tbl_df' to avoid
confusion with other datasets in the R ecosystem. This naming convention
helps distinguish this dataset as part of the NeuroDataSets package. The
suffix 'tbl_df' indicates that the dataset is a tibble. The original
content has not been modified.

Source
~~~~~~

Data taken from the pubh package version 2.0.0
