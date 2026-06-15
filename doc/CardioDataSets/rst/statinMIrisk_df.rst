=============== ===============
statinMIrisk_df R Documentation
=============== ===============

Statin intensity and MI risk
----------------------------

Description
~~~~~~~~~~~

This dataset, statinMIrisk_df, is a data frame containing results from 4
clinical trials investigating the effect of statin therapy intensity on
the risk of myocardial infarction or coronary death. The data compares
intensive versus standard statin regimens.

Usage
~~~~~

.. code:: R

   data(statinMIrisk_df)

Format
~~~~~~

A data frame with 4 observations and 5 variables:

study
   Study identifier (character)

eI
   Number of events in intensive treatment group (numeric)

nI
   Total patients in intensive treatment group (numeric)

eC
   Number of events in control/standard group (numeric)

nC
   Total patients in control/standard group (numeric)

Details
~~~~~~~

The dataset name has been kept as 'statinMIrisk_df' to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the CardioDataSets package and
assists users in identifying its specific characteristics. The suffix
'df' indicates that the dataset is a standard data frame. The original
content has not been modified in any way.

Source
~~~~~~

Data taken from the RTSA package version 0.2.2
