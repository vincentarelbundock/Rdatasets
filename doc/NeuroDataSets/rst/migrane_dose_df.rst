=============== ===============
migrane_dose_df R Documentation
=============== ===============

Migraine Dose–Response Trial Data
---------------------------------

Description
~~~~~~~~~~~

This dataset, migrane_dose_df, is a data frame obtained from a
randomized, placebo-controlled dose–response clinical trial for the
treatment of acute migraine (clinicaltrials.gov identifier NCT00712725).
The primary endpoint was “pain freedom at 2 hours postdose,” measured as
a binary outcome. The dataset includes dose levels, the number of
participants achieving pain freedom, and the total number of treated
participants at each dose level. These data are useful for dose–response
modeling and clinical trial analysis in migraine research.

Usage
~~~~~

.. code:: R

   data(migrane_dose_df)

Format
~~~~~~

A data frame with 8 observations and 3 variables:

dose
   Dose level administered (numeric)

painfree
   Number of participants who achieved pain freedom at 2 hours postdose
   (integer)

ntrt
   Total number of treated participants at the corresponding dose level
   (integer)

Details
~~~~~~~

The dataset name has been kept as migrane_dose_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the DoseFinding package version 1.4-1
