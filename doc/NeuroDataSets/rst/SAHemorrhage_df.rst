=============== ===============
SAHemorrhage_df R Documentation
=============== ===============

Subarachnoid Hemorrhage Clinical and Laboratory Data
----------------------------------------------------

Description
~~~~~~~~~~~

This dataset, SAHemorrhage_df, is a data frame containing clinical and
laboratory variables from 113 patients diagnosed with aneurysmal
subarachnoid hemorrhage. The dataset includes functional outcomes,
demographic information, clinical severity scores, and biomarker
measurements. These data provide valuable information for studying
neurological prognosis, biomarker associations, and clinical patterns in
patients with subarachnoid hemorrhage.

Usage
~~~~~

.. code:: R

   data(SAHemorrhage_df)

Format
~~~~~~

A data frame with 113 observations and 7 variables:

gos6
   Glasgow Outcome Scale at 6 months (ordered factor with 5 levels)

outcome
   Clinical outcome classification (factor with 2 levels)

gender
   Gender of the patient (factor with 2 levels)

age
   Age of the patient (integer)

wfns
   WFNS clinical grade (ordered factor with 5 levels)

s100b
   S100B biomarker level (numeric)

ndka
   Nucleoside diphosphate kinase A level (numeric)

Details
~~~~~~~

The dataset name has been kept as SAHemorrhage_df to avoid confusion
with other datasets in the R ecosystem. This naming convention helps
distinguish this dataset as part of the NeuroDataSets package and
assists users in identifying its specific characteristics. The suffix df
indicates that the dataset is a data frame. The original content has not
been modified in any way.

Source
~~~~~~

Data taken from the reportROC package version 3.6
