=========== ===============
dementia_df R Documentation
=========== ===============

Dementia Scores Dataset
-----------------------

Description
~~~~~~~~~~~

This dataset, dementia_df, is a data frame containing information
related to dementia assessment. The data includes dementia scores along
with demographic variables such as age and sex, as well as study
identifiers. The dataset consists of 1,000 observations across 4
variables and was originally sourced from the PBImisc package. This
dataset can be useful for analyzing patterns in dementia scores across
different demographic groups and studies.

Usage
~~~~~

.. code:: R

   data(dementia_df)

Format
~~~~~~

A data frame with 1,000 observations and 4 variables:

demscore
   Dementia score (integer)

age
   Age group of the participant (factor with 2 levels)

sex
   Sex of the participant (factor with 2 levels)

study
   Study identifier (factor with 10 levels)

Details
~~~~~~~

The dataset name has been kept as dementia_df to avoid confusion with
other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified.

Source
~~~~~~

Data taken from the PBImisc package version 1.0
